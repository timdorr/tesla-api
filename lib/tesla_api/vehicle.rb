module TeslaApi
  class Vehicle
    include Stream
    include Autopark
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

    def data
      api.get("/vehicles/#{id}/data")["response"]
    end

    def mobile_enabled
      api.get("/vehicles/#{id}/mobile_enabled")["response"]
    end

    def gui_settings
      data_request("gui_settings")["response"]
    end

    def charge_state
      data_request("charge_state")["response"]
    end

    def climate_state
      data_request("climate_state")["response"]
    end

    def drive_state
      data_request("drive_state")["response"]
    end

    def vehicle_state
      data_request("vehicle_state")["response"]
    end

    # Commands

    def wake_up
      @vehicle = api.post("/vehicles/#{id}/wake_up")["response"]
    end

    def set_valet_mode(on, password=nil)
      command("set_valet_mode", body: {on: on, password: password})["response"]
    end

    def reset_valet_pin
      command("reset_valet_pin")["response"]
    end

    def charge_port_door_open
      command("charge_port_door_open")["response"]
    end

    def charge_standard
      command("charge_standard")["response"]
    end

    def charge_max_range
      command("charge_max_range")["response"]
    end

    def set_charge_limit(percent)
      command("set_charge_limit", body: {percent: percent})["response"]
    end

    def charge_start
      command("charge_start")["response"]
    end

    def charge_stop
      command("charge_stop")["response"]
    end

    def flash_lights
      command("flash_lights")["response"]
    end

    def honk_horn
      command("honk_horn")["response"]
    end

    def door_unlock
      command("door_unlock")["response"]
    end

    def door_lock
      command("door_lock")["response"]
    end

    def set_temps(driver_temp, passenger_temp)
      command("set_temps", body: {driver_temp: driver_temp, passenger_temp: passenger_temp})["response"]
    end

    def auto_conditioning_start
      command("auto_conditioning_start")["response"]
    end

    def auto_conditioning_stop
      command("auto_conditioning_stop")["response"]
    end

    def sun_roof_control(state)
      command("sun_roof_control", body: {state: state})["response"]
    end

    def sun_roof_move(percent)
      command("sun_roof_control", body: {state: "move", percent: percent})["response"]
    end

    def remote_start_drive(password)
      command("remote_start_drive", body: {password: password})["response"]
    end

    def open_trunk
      command("actuate_trunk", body: {which_trunk: "rear"})["response"]
    end

    def open_frunk
      command("actuate_trunk", body: {which_trunk: "front"})["response"]
    end

    def activate_speed_limit(pin)
      command("speed_limit_activate", body: {pin: pin})["response"]
    end

    def deactivate_speed_limit(pin)
      command("speed_limit_deactivate", body: {pin: pin})["response"]
    end

    def set_speed_limit(limit_mph)
      command("speed_limit_set_limit", body: {limit_mph: limit_mph})["response"]
    end

    def clear_speed_limit_pin(pin)
      command("speed_limit_clear_pin", body: {pin: pin})["response"]
    end

    private

    def data_request(name)
      api.get("/vehicles/#{id}/data_request/#{name}")
    end

    def command(name, body: nil)
      api.post("/vehicles/#{id}/command/#{name}", body: body)
    end
  end
end
