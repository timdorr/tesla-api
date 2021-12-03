module TeslaApi
  class Vehicle
    include Stream
    include Autopark
    attr_reader :client, :api, :email, :id, :vehicle

    def initialize(client, email, id, vehicle)
      @client = client
      @email = email
      @id = id
      @vehicle = vehicle
    end

    # Properties

    def [](key)
      vehicle[key]
    end

    def method_missing(name)
      if vehicle.key?(name.to_s)
        vehicle[name.to_s]
      else
        raise NoMethodError.new("Vehicle does not have property `#{name}`", name)
      end
    end

    def respond_to_missing?(name, include_private = false)
      vehicle.key?(name.to_s) || super
    end

    # State

    def vehicle_data
      client.get("/vehicles/#{id}/vehicle_data")["response"]
    end

    def data
      client.get("/vehicles/#{id}/data")["response"]
    end

    def mobile_enabled
      client.get("/vehicles/#{id}/mobile_enabled")["response"]
    end

    def nearby_charging_sites
      client.get("/vehicles/#{id}/nearby_charging_sites")["response"]
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

    def vehicle_config
      data_request("vehicle_config")["response"]
    end

    # Commands

    def wake_up
      @vehicle = client.post("/vehicles/#{id}/wake_up")["response"]
    end

    def set_valet_mode(on, password = nil)
      command("set_valet_mode", body: {on: on, password: password})["response"]
    end

    def reset_valet_pin
      command("reset_valet_pin")["response"]
    end

    def charge_port_door_open
      command("charge_port_door_open")["response"]
    end

    def charge_port_door_close
      command("charge_port_door_close")["response"]
    end

    def charge_standard
      command("charge_standard")["response"]
    end

    def charge_max_range
      command("charge_max_range")["response"]
    end

    def set_charge_limit(percent)
      command("set_charge_limit", body: {percent: percent.to_i})["response"]
    end

    def set_charging_amps(charging_amps)
      command("set_charging_amps", body: {charging_amps: charging_amps})["response"]
    end

    def set_scheduled_charging(enable, time)
      command("set_scheduled_charging", body: {enable: enable, time: time})["response"]
    end

    def set_scheduled_departure(enable, departure_time, preconditioning_enabled, preconditioning_weekdays_only, off_peak_charging_enabled, off_peak_charging_weekdays_only, end_off_peak_time)
      command("set_scheduled_departure", body: {
        enable: enable,
        departure_time: departure_time,
        preconditioning_enabled: preconditioning_enabled,
        preconditioning_weekdays_only: preconditioning_weekdays_only,
        off_peak_charging_enabled: off_peak_charging_enabled,
        off_peak_charging_weekdays_only: off_peak_charging_weekdays_only,
        end_off_peak_time: end_off_peak_time
      })["response"]
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

    def set_preconditioning_max(on)
      command("set_preconditioning_max", body: {on: on})["response"]
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

    def window_control(command)
      command("window_control", body: {command: command, lat: 0, lon: 0})["response"]
    end

    def remote_start_drive
      command("remote_start_drive")["response"]
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

    def navigation_request(address)
      command("navigation_request", body: {
        type: "share_ext_content_raw",
        locale: "en-US",
        timestamp_ms: Time.now.to_i,
        value: {"android.intent.extra.TEXT" => address}
      })["response"]
    end

    def share(text)
      navigation_request(text)
    end

    def schedule_software_update(offset_sec = 0)
      command("schedule_software_update", body: {offset_sec: offset_sec})["response"]
    end

    def cancel_software_update
      command("cancel_software_update")["response"]
    end

    def set_seat_heater(heater, level)
      command("remote_seat_heater_request", body: {heater: heater, level: level})["response"]
    end

    def set_steering_wheel_heater(on)
      command("remote_steering_wheel_heater_request", body: {on: on})["response"]
    end

    def set_sentry_mode(on)
      command("set_sentry_mode", body: {on: on})["response"]
    end

    def trigger_homelink(lat, lon)
      command("trigger_homelink", body: {lat: lat, lon: lon})["response"]
    end

    def media_toggle_playback
      command("media_toggle_playback")["response"]
    end

    def media_next_track
      command("media_next_track")["response"]
    end

    def media_prev_track
      command("media_prev_track")["response"]
    end

    def media_next_fav
      command("media_next_fav")["response"]
    end

    def media_prev_fav
      command("media_prev_fav")["response"]
    end

    def media_volume_up
      command("media_volume_up")["response"]
    end

    def media_volume_down
      command("media_volume_down")["response"]
    end

    private

    def data_request(name)
      client.get("/vehicles/#{id}/data_request/#{name}")
    end

    def command(name, body: nil)
      client.post("/vehicles/#{id}/command/#{name}", body: body)
    end
  end
end
