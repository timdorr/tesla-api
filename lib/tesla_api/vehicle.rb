module TeslaApi
  class Vehicle
    attr_reader :api, :email, :id, :vehicle

    def initialize(api, email, id, vehicle)
      @api = api
      @email = email
      @id = id
      @vehicle = vehicle
    end

    # Properties

    def [](key)
      vehicle[key]
    end

    def method_missing(name)
      if vehicle.keys.include?(name.to_s)
        vehicle[name.to_s]
      else
        raise NoMethodError.new("Vehicle does not have property `#{name}`", name)
      end
    end

    # State

    def mobile_enabled
      api.get("/vehicles/#{id}/mobile_enabled")["response"]
    end

    def gui_settings
      api.get("/vehicles/#{id}/data_request/gui_settings")["response"]
    end

    def charge_state
      api.get("/vehicles/#{id}/data_request/charge_state")["response"]
    end

    def climate_state
      api.get("/vehicles/#{id}/data_request/climate_state")["response"]
    end

    def drive_state
      api.get("/vehicles/#{id}/data_request/drive_state")["response"]
    end

    def vehicle_state
      api.get("/vehicles/#{id}/data_request/vehicle_state")["response"]
    end

    # Commands

    def wake_up
      @vehicle = api.post("/vehicles/#{id}/wake_up")["response"]
    end

    def charge_port_door_open
      api.post("/vehicles/#{id}/command/charge_port_door_open")["response"]
    end

    def charge_standard
      api.post("/vehicles/#{id}/command/charge_standard")["response"]
    end

    def charge_max_range
      api.post("/vehicles/#{id}/command/charge_max_range")["response"]
    end

    def set_charge_limit(percent)
      api.post("/vehicles/#{id}/command/set_charge_limit", body: {percent: percent})["response"]
    end

    def charge_start
      api.post("/vehicles/#{id}/command/charge_start")["response"]
    end

    def charge_stop
      api.post("/vehicles/#{id}/command/charge_stop")["response"]
    end

    def flash_lights
      api.post("/vehicles/#{id}/command/flash_lights")["response"]
    end

    def honk_horn
      api.post("/vehicles/#{id}/command/honk_horn")["response"]
    end

    def door_unlock
      api.post("/vehicles/#{id}/command/door_unlock")["response"]
    end

    def door_lock
      api.post("/vehicles/#{id}/command/door_lock")["response"]
    end

    def set_temps(driver_temp, passenger_temp)
      api.post("/vehicles/#{id}/command/set_temps", body: {driver_temp: driver_temp, passenger_temp: passenger_temp})["response"]
    end

    def auto_conditioning_start
      api.post("/vehicles/#{id}/command/auto_conditioning_start")["response"]
    end

    def auto_conditioning_stop
      api.post("/vehicles/#{id}/command/auto_conditioning_stop")["response"]
    end

    def sun_roof_control(state)
      api.post("/vehicles/#{id}/command/sun_roof_control", body: {state: state})["response"]
    end

    def sun_roof_move(percent)
      api.post("/vehicles/#{id}/command/sun_roof_control", body: {state: "move", percent: percent})["response"]
    end

    def remove_start_drive(password)
      api.post("/vehicles/#{id}/command/remote_start_drive", body: {password: password})["response"]
    end

    def open_trunk
      api.post("/vehicles/#{id}/command/trunk_open", body: {which_trunk: "rear"})
    end

    def open_frunk
      api.post("/vehicles/#{id}/command/trunk_open", body: {which_trunk: "rear"})
    end

    # Streaming

    def stream(&reciever)
      EventMachine.run do
        request = EventMachine::HttpRequest.new(
            "https://streaming.vn.teslamotors.com/stream/#{self["vehicle_id"]}/" +
                "?values=speed,odometer,soc,elevation,est_heading,est_lat,est_lng,power")

        http = request.get(
            head: {
                "authorization" => [
                    email,
                    self["tokens"].first
                ]
            },
            inactivity_timeout: 15)

        http.stream do |chunk|
          attributes = chunk.split(",")
          reciever.call({
                            time: DateTime.strptime((attributes[0].to_i/1000).to_s, "%s"),
                            speed: attributes[1].to_f,
                            odometer: attributes[2].to_f,
                            soc: attributes[3].to_f,
                            elevation: attributes[4].to_f,
                            est_heading: attributes[5].to_f,
                            est_lat: attributes[6].to_f,
                            est_lng: attributes[7].to_f,
                            power: attributes[8].to_f
                        })
        end

        http.callback { EventMachine.stop }
        http.errback { EventMachine.stop }
      end
    end
  end
end
