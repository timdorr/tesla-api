# A simple Tesla API wrapper via HTTParty and EM-HTTP-Request

# Usage:
# tesla = TeslaApi.new(email, password
# tesla.vehicles.first.wake_up
# car = tesla.vehicles.first # If you have more than one, I'm jealous!
# car.charge_state
# car.door_unlock
# car.stream { |data| puts data.inspect }

class TeslaApi
  include HTTParty
  base_uri 'https://portal.vn.teslamotors.com'
  format :json

  def initialize(email, password)
    @email = email
    response = self.class.get('/login')
    response = self.class.post(
        '/login',
        body: {
            "user_session[email]" => email,
            "user_session[password]" => password
        },
        headers: {'Cookie' => response.headers['Set-Cookie']}
    )
    self.class.headers 'Cookie' => response.request.options[:headers]['Cookie']
  end

  def vehicles
    self.class.get('/vehicles').map { |v| Vehicle.new(self.class, @email, v["id"], v) }
  end

  class Vehicle
    attr_accessor :api, :email, :id, :vehicle

    def initialize(api, email, id, vehicle)
      @api = api
      @email = email
      @id = id
      @vehicle = vehicle
    end

    def [](key)
      vehicle[key]
    end

    # State

    def mobile_enabled
      api.get("/vehicles/#{id}/mobile_enabled")["result"]
    end

    def charge_state
      api.get("/vehicles/#{id}/command/charge_state")
    end

    def climate_state
      api.get("/vehicles/#{id}/command/climate_state")
    end

    def drive_state
      api.get("/vehicles/#{id}/command/drive_state")
    end

    def gui_settings
      api.get("/vehicles/#{id}/command/gui_settings")
    end

    def vehicle_state
      api.get("/vehicles/#{id}/command/vehicle_state")
    end

    # Commands

    def wake_up
      api.get("/vehicles/#{id}/command/wake_up")
    end

    def charge_port_door_open
      api.get("/vehicles/#{id}/command/charge_port_door_open")
    end

    def charge_standard
      api.get("/vehicles/#{id}/command/charge_standard")
    end

    def charge_max_range
      api.get("/vehicles/#{id}/command/charge_max_range")
    end

    def set_charge_limit(percent)
      api.get("/vehicles/#{id}/command/set_charge_limit", query: { state: "set", percent: percent })
    end

    def charge_start
      api.get("/vehicles/#{id}/command/charge_start")
    end

    def charge_stop
      api.get("/vehicles/#{id}/command/charge_stop")
    end

    def flash_lights
      api.get("/vehicles/#{id}/command/flash_lights")
    end

    def honk_horn
      api.get("/vehicles/#{id}/command/honk_horn")
    end

    def door_unlock
      api.get("/vehicles/#{id}/command/door_unlock")
    end

    def door_lock
      api.get("/vehicles/#{id}/command/door_lock")
    end

    def set_temps(driver_temp, passenger_temp)
      api.get("/vehicles/#{id}/command/set_temps", query: { driver_temp: driver_temp, passenger_temp: passenger_temp })
    end

    def auto_conditioning_start
      api.get("/vehicles/#{id}/command/auto_conditioning_start")
    end

    def auto_conditioning_stop
      api.get("/vehicles/#{id}/command/auto_conditioning_stop")
    end

    def sun_roof_control(state)
      api.get("/vehicles/#{id}/command/sun_roof_control", query: { state: state })
    end

    def sun_roof_move(percent)
      api.get("/vehicles/#{id}/command/sun_roof_control", query: { state: "move", percent: percent })
    end

    # Streaming

    def stream(&reciever)
      EventMachine.run do
        http = EventMachine::HttpRequest.new("https://streaming.vn.teslamotors.com/stream/#{self["vehicle_id"]}/?values=speed,odometer,soc,elevation,est_heading,est_lat,est_lng,power").get(head: {'authorization' => [email, self["tokens"].first]}, inactivity_timeout: 15)
        http.stream do |chunk|
          attributes = chunk.split(",")
          reciever.call({
             time:        DateTime.strptime((attributes[0].to_i/1000).to_s, "%s"),
             speed:       attributes[1].to_f,
             odometer:    attributes[2].to_f,
             soc:         attributes[3].to_f,
             elevation:   attributes[4].to_f,
             est_heading: attributes[5].to_f,
             est_lat:     attributes[6].to_f,
             est_lng:     attributes[7].to_f,
             power:       attributes[8].to_f
          })
        end
        http.callback { EventMachine.stop }
        http.errback  { EventMachine.stop }
      end
    end
  end
end
