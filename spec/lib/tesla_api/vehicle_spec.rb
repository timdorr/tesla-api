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
end
