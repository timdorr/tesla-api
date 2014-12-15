require 'spec_helper'

RSpec.describe TeslaApi::Client do
  subject(:tesla_api) { TeslaApi::Client.new(ENV["TESLA_EMAIL"], ENV["TESLA_PASS"], ENV["TESLA_CLIENT_ID"], ENV["TESLA_CLIENT_SECRET"]) }

  describe "#initialize", vcr: { cassette_name: "client-initialize" } do
    it { is_expected.to be_a(TeslaApi::Client) }

    it "logs into the API" do
      base_uri = URI.parse(tesla_api.class.base_uri)
      expect(a_request(:post, "https://#{base_uri.host}/oauth/token")).to have_been_made.once
    end

    it "sets a Bearer token" do
      expect(tesla_api.class.headers).to include({"Authorization" => /Bearer [a-z0-9]{32}/})
    end
  end

  describe "#vehicles", vcr: {cassette_name: "client-vehicles"} do
    it "lists the vehicles on the account" do
      expect(tesla_api.vehicles).to include(TeslaApi::Vehicle)
    end
  end
end
