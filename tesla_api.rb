# A simple Tesla API wrapper via HTTParty

# Usage:
# tesla = TeslaApi.new(email, password
# car = tesla.vehicles.first # If you have more than one, I'm jealous!
# car.charge_state
# car.door_unlock

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
    self.class.get('/vehicles').map { |v| Vehicle.new(self.class, v["id"]) }
  end

  class Vehicle
    attr_accessor :api, :id

    def initialize(api, id)
      @api = api
      @id = id
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
  end
end