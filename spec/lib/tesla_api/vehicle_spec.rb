require "spec_helper"

RSpec.describe TeslaApi::Vehicle do
  let(:tesla_api) { TeslaApi::Client.new(access_token: ENV["TESLA_ACCESS_TOKEN"]) }

  subject(:vehicle) { tesla_api.vehicles.first }

  describe "#[]", vcr: {cassette_name: "vehicle"} do
    it "contains the vehicle name" do
      expect(vehicle["display_name"]).to eq("Nikola")
    end
  end

  describe "#method_missing", vcr: {cassette_name: "vehicle"} do
    it "doesn't provide dynamic methods for nonexistent properties" do
      expect { vehicle.gas_level }.to raise_exception(NoMethodError)
    end

    it "provides a dynamic method for the display_name" do
      expect(vehicle.display_name).to eq("Nikola")
    end
  end

  describe "#vehicle_data", vcr: {cassette_name: "vehicle-vehicle_data"} do
    context "data about the vehicle's overall state" do
      subject { vehicle.data }

      it { should include("display_name") }
      it { should include("drive_state") }
      it { should include("vehicle_state") }
      it { should include("vehicle_config") }
      it { should include("charge_state") }
    end
  end

  describe "#data", vcr: {cassette_name: "vehicle-data"} do
    context "data about the vehicle's overall state" do
      subject { vehicle.data }

      it { should include("display_name") }
      it { should include("drive_state") }
      it { should include("vehicle_state") }
      it { should include("vehicle_config") }
      it { should include("charge_state") }
    end
  end

  describe "#mobile_enabled", vcr: {cassette_name: "vehicle-mobile_enabled"} do
    it "indicates if mobile app access is enabled" do
      expect(vehicle.mobile_enabled).to eq(true)
    end
  end

  describe "#nearby_charging_sites", vcr: {cassette_name: "vehicle-nearby_charging_sites"} do
    pending "returns a list of nearby charging sites" do
      expect(vehicle.nearby_charging_sites).to eq([])
    end
  end

  describe "#gui_settings", vcr: {cassette_name: "vehicle-gui_settings"} do
    context "details for a GUI built on the API" do
      subject { vehicle.gui_settings }

      it { should include("gui_charge_rate_units") }
      it { should include("gui_distance_units") }
      it { should include("gui_temperature_units") }
      it { should include("gui_range_display") }
      it { should include("gui_24_hour_time") }
    end
  end

  describe "#charge_state", vcr: {cassette_name: "vehicle-charge_state"} do
    context "data about the vehicle's charging state" do
      subject { vehicle.charge_state }

      it { should include("battery_level") }
      it { should include("charge_rate") }
      it { should include("charging_state") }
      it { should include("est_battery_range") }
      it { should include("fast_charger_present") }
    end
  end

  describe "#climate_state", vcr: {cassette_name: "vehicle-climate_state"} do
    context "data about the vehicle's climate controls and internal climate" do
      subject { vehicle.climate_state }

      it { should include("inside_temp") }
      it { should include("outside_temp") }
      it { should include("driver_temp_setting") }
      it { should include("passenger_temp_setting") }
      it { should include("is_auto_conditioning_on") }
    end
  end

  describe "#drive_state", vcr: {cassette_name: "vehicle-drive_state"} do
    context "data about the vehicle's driving state" do
      subject { vehicle.drive_state }

      it { should include("heading") }
      it { should include("latitude") }
      it { should include("longitude") }
      it { should include("speed") }
    end
  end

  describe "#vehicle_state", vcr: {cassette_name: "vehicle-vehicle_state"} do
    context "data about the vehicle's overall state" do
      subject { vehicle.vehicle_state }

      it { should include("vehicle_name") }
      it { should include("exterior_color") }
      it { should include("wheel_type") }
      it { should include("has_spoiler") }
      it { should include("calendar_supported") }
      it { should include("locked") }
    end
  end

  describe "#vehicle_config", vcr: {cassette_name: "vehicle-vehicle_config"} do
    context "data about the vehicle's overall state" do
      subject { vehicle.vehicle_config }

      it { should include("exterior_color") }
      it { should include("wheel_type") }
      it { should include("has_air_suspension") }
      it { should include("car_type") }
      it { should include("timestamp") }
    end
  end

  describe "#wake_up", vcr: {cassette_name: "vehicle-wake_up"} do
    it "wakes up the car from sleep mode" do
      vehicle.wake_up
      expect(vehicle.state).to eq("online")
    end
  end

  describe "#set_valet_mode", vcr: {cassette_name: "vehicle-set_valet_mode"} do
    it "enables valet mode on the car" do
      expect(vehicle.set_valet_mode(true, 1234)["result"]).to eq(true)
    end

    it "enables valet mode with a previous PIN" do
      expect(vehicle.set_valet_mode(true)["result"]).to eq(true)
    end
  end

  describe "#reset_valet_pin", vcr: {cassette_name: "vehicle-reset_valet_pin"} do
    it "resets the valet mode PIN" do
      expect(vehicle.reset_valet_pin["result"]).to eq(true)
    end
  end

  describe "#charge_port_door_open", vcr: {cassette_name: "vehicle-charge_port_door_open"} do
    it "opens the charge port door" do
      expect(vehicle.charge_port_door_open["result"]).to eq(true)
    end
  end

  describe "#charge_standard" do
    it "sets the charge limit to standard (90%)", vcr: {cassette_name: "vehicle-charge_standard"} do
      expect(vehicle.charge_standard["result"]).to eq(true)
    end

    it "doesn't set the charge rate to standard twice", vcr: {cassette_name: "vehicle-charge_standard-twice"} do
      expect(vehicle.charge_standard["result"]).to eq(true)
      expect(vehicle.charge_standard).to eq({"result" => false, "reason" => "already_standard"})
    end
  end

  describe "#charge_max_range" do
    it "sets the charge limit to max range (100%)", vcr: {cassette_name: "vehicle-charge_max_range"} do
      expect(vehicle.charge_max_range["result"]).to eq(true)
    end

    it "doesn't set the charge rate to max range twice", vcr: {cassette_name: "vehicle-charge_max_range-twice"} do
      expect(vehicle.charge_max_range["result"]).to eq(true)
      expect(vehicle.charge_max_range).to eq({"result" => false, "reason" => "already_max_range"})
    end
  end

  describe "#set_charge_limit" do
    it "sets the charge limit to 100%", vcr: {cassette_name: "vehicle-set_charge_limit-100"} do
      expect(vehicle.set_charge_limit(100)["result"]).to eq(true)
    end

    it "sets the charge limit to 90%", vcr: {cassette_name: "vehicle-set_charge_limit-90"} do
      expect(vehicle.set_charge_limit(90)["result"]).to eq(true)
    end

    it "sets the charge limit to 50%", vcr: {cassette_name: "vehicle-set_charge_limit-50"} do
      expect(vehicle.set_charge_limit(50)["result"]).to eq(true)
    end

    it "doesn't actually set the charge limit to 1%", vcr: {cassette_name: "vehicle-set_charge_limit-1"} do
      expect(vehicle.set_charge_limit(1)["result"]).to eq(true)
      expect(vehicle.charge_state["charge_limit_soc"]).to eq(50)
    end
  end

  describe "#set_charging_amps" do
    it "sets charging_amp to 10 amps", vcr: {cassette_name: "vehicle-set_charging_amps-10"} do
      expect(vehicle.set_charging_amps(10)["result"]).to eq(true)
    end
  end

  describe "#charge_port_door_open", vcr: {cassette_name: "vehicle-charge_port_door_open"} do
    it "opens the charge port door" do
      expect(vehicle.charge_port_door_open["result"]).to eq(true)
    end
  end

  describe "#charge_port_door_close", vcr: {cassette_name: "vehicle-charge_port_door_close"} do
    it "closes the charge port door" do
      expect(vehicle.charge_port_door_close["result"]).to eq(true)
    end
  end

  describe "#charge_start", vcr: {cassette_name: "vehicle-charge_start"} do
    it "starts charging" do
      expect(vehicle.charge_start["result"]).to eq(true)
    end
  end

  describe "#charge_stop", vcr: {cassette_name: "vehicle-charge_stop"} do
    it "stops charging" do
      expect(vehicle.charge_stop["result"]).to eq(true)
    end
  end

  describe "#flash_lights", vcr: {cassette_name: "vehicle-flash_lights"} do
    it "flashes the vehicle's lights" do
      expect(vehicle.flash_lights["result"]).to eq(true)
    end
  end

  describe "#honk_horn", vcr: {cassette_name: "vehicle-honk_horn"} do
    it "honks the vehicle's horn" do
      expect(vehicle.honk_horn["result"]).to eq(true)
    end
  end

  describe "#door_unlock", vcr: {cassette_name: "vehicle-door_unlock"} do
    it "unlocks the vehicle's doors" do
      expect(vehicle.door_unlock["result"]).to eq(true)
    end
  end

  describe "#door_lock", vcr: {cassette_name: "vehicle-door_lock"} do
    it "locks the vehicle's doors" do
      expect(vehicle.door_lock["result"]).to eq(true)
    end
  end

  describe "#set_temps" do
    it "sets the desired temperature in the car to 70", vcr: {cassette_name: "vehicle-set_temps-70-70"} do
      expect(vehicle.set_temps(20.9, 20.9)["result"]).to eq(true)
    end

    it "sets the desired temperature in the car to 75 and 65", vcr: {cassette_name: "vehicle-set_temps-75-65"} do
      expect(vehicle.set_temps(23.7, 23.7)["result"]).to eq(true)
    end
  end

  describe "#auto_conditioning_start", vcr: {cassette_name: "vehicle-auto_conditioning_start"} do
    it "starts the HVAC system" do
      expect(vehicle.auto_conditioning_start["result"]).to eq(true)
    end
  end

  describe "#auto_conditioning_stop", vcr: {cassette_name: "vehicle-auto_conditioning_stop"} do
    it "stops the HVAC system" do
      expect(vehicle.auto_conditioning_stop["result"]).to eq(true)
    end
  end

  describe "#sun_roof_control" do
    it "closes the sun roof", vcr: {cassette_name: "vehicle-sun_roof_control-close"} do
      expect(vehicle.sun_roof_control("close")["result"]).to eq(true)
    end

    it "vents the sun roof", vcr: {cassette_name: "vehicle-sun_roof_control-vent"} do
      expect(vehicle.sun_roof_control("vent")["result"]).to eq(true)
    end
  end

  describe "#remote_start_drive", vcr: {cassette_name: "vehicle-remote_start_drive"} do
    it "starts the vehicle's keyless driving mode" do
      expect(vehicle.remote_start_drive["result"]).to eq(true)
    end
  end

  describe "#open_trunk", vcr: {cassette_name: "vehicle-open_trunk"} do
    it "opens the trunk" do
      expect(vehicle.open_frunk["result"]).to eq(true)
    end
  end

  describe "#open_frunk", vcr: {cassette_name: "vehicle-open_frunk"} do
    it "opens the frunk" do
      expect(vehicle.open_frunk["result"]).to eq(true)
    end
  end

  describe "#activate_speed_limit", vcr: {cassette_name: "vehicle-activate_speed_limit"} do
    it "activates the speed limit" do
      expect(vehicle.activate_speed_limit("1234")["result"]).to eq(true)
    end
  end

  describe "#deactivate_speed_limit", vcr: {cassette_name: "vehicle-deactivate_speed_limit"} do
    it "deactivates the speed limit" do
      expect(vehicle.deactivate_speed_limit("1234")["result"]).to eq(true)
    end
  end

  describe "#set_speed_limit", vcr: {cassette_name: "vehicle-set_speed_limit"} do
    it "sets the speed limit" do
      expect(vehicle.set_speed_limit(65)["result"]).to eq(true)
    end
  end

  describe "#clear_speed_limit_pin", vcr: {cassette_name: "vehicle-clear_speed_limit_pin"} do
    it "clears the speed limit pin" do
      expect(vehicle.clear_speed_limit_pin("1234")["result"]).to eq(true)
    end
  end

  describe "#navigation_request", vcr: {cassette_name: "vehicle-navigation_request"} do
    it "makes a request to navigate to a new address" do
      expect(vehicle.navigation_request("1180 W Peachtree St, Atlanta, GA 30309")["result"]).to eq(true)
    end
  end

  describe "#schedule_software_update", vcr: {cassette_name: "vehicle-schedule_software_update"} do
    it "cancels a pending software update" do
      expect(vehicle.schedule_software_update(7200)["result"]).to eq(true)
    end
  end

  describe "#cancel_software_update", vcr: {cassette_name: "vehicle-cancel_software_update"} do
    it "cancels a pending software update" do
      expect(vehicle.cancel_software_update["result"]).to eq(true)
    end
  end

  describe "#seat_heater_request", vcr: {cassette_name: "vehicle-seat_heater_request"} do
    it "turns off the driver seat heater" do
      expect(vehicle.set_seat_heater(1, 0)["result"]).to eq(true)
    end
  end

  describe "#steering_wheel_heater_request", vcr: {cassette_name: "vehicle-steering_wheel_heater_request"} do
    it "turns off the steering wheel heater" do
      expect(vehicle.set_steering_wheel_heater(false)["result"]).to eq(true)
    end
  end

  describe "#set_sentry_mode", vcr: {cassette_name: "vehicle-set_sentry_mode"} do
    it "disables sentry mode" do
      expect(vehicle.set_sentry_mode(false)["result"]).to eq(true)
    end
  end

  context "#media" do
    describe "#media_toggle_playback", vcr: {cassette_name: "vehicle-media_toggle_playback"} do
      it "toggles media from playing and paused" do
        expect(vehicle.media_toggle_playback["result"]).to eq(true)
      end
    end

    describe "#media_next_track", vcr: {cassette_name: "vehicle-media_next_track"} do
      it "plays the next track in playlist" do
        expect(vehicle.media_next_track["result"]).to eq(true)
      end
    end

    describe "#media_prev_track", vcr: {cassette_name: "vehicle-media_prev_track"} do
      it "plays the previous track in playlist" do
        expect(vehicle.media_prev_track["result"]).to eq(true)
      end
    end

    describe "#media_next_fav", vcr: {cassette_name: "vehicle-media_next_fav"} do
      it "plays the next favourite track" do
        expect(vehicle.media_next_fav["result"]).to eq(true)
      end
    end

    describe "#media_prev_fav", vcr: {cassette_name: "vehicle-media_prev_fav"} do
      it "plays the previous favourite track" do
        expect(vehicle.media_prev_fav["result"]).to eq(true)
      end
    end

    describe "#media_volume_up", vcr: {cassette_name: "vehicle-media_volume_up"} do
      it "increases volume of media" do
        expect(vehicle.media_volume_up["result"]).to eq(true)
      end
    end

    describe "#media_volume_down", vcr: {cassette_name: "vehicle-media_volume_down"} do
      it "decreases volume of media" do
        expect(vehicle.media_volume_down["result"]).to eq(true)
      end
    end
  end
end
