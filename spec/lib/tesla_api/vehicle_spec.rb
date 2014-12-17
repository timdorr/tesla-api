require 'spec_helper'

RSpec.describe TeslaApi::Vehicle do
  let(:tesla_api) { TeslaApi::Client.new(ENV["TESLA_EMAIL"], ENV["TESLA_PASS"], ENV["TESLA_CLIENT_ID"], ENV["TESLA_CLIENT_SECRET"]) }

  subject(:vehicle) { tesla_api.vehicles.first }

  describe "#[]", vcr: { cassette_name: "vehicle" } do
    it "contains the vehicle name" do
      expect(vehicle["display_name"]).to eq("Nikola")
    end
  end

  describe "#method_missing", vcr: {cassette_name: "vehicle"} do
    it "doesn't provide dynamic methods for nonexistent properties" do
      expect{vehicle.gas_level}.to raise_exception(NoMethodError)
    end

    it "provides a dynamic method for the display_name" do
      expect(vehicle.display_name).to eq("Nikola")
    end
  end

  describe "#mobile_enabled", vcr: {cassette_name: "vehicle-mobile_enabled"} do
    it "indicates if mobile app access is enabled" do
      expect(vehicle.mobile_enabled).to eq(true)
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
end
