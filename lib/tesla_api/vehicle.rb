module TeslaApi
  class Vehicle
    include Stream
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

    def remote_start_drive(password)
      api.post("/vehicles/#{id}/command/remote_start_drive", body: {password: password})["response"]
    end

    def open_trunk
      api.post("/vehicles/#{id}/command/trunk_open", body: {which_trunk: "rear"})
    end

    def open_frunk
      api.post("/vehicles/#{id}/command/trunk_open", body: {which_trunk: "rear"})
    end
  end
end
