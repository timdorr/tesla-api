require 'spec_helper'

RSpec.describe TeslaApi::Client do
  subject(:tesla_api) { TeslaApi::Client.new(ENV["TESLA_EMAIL"]) }

  describe "#token=" do
    it "sets a Bearer token" do
      tesla_api.token = Faker::Lorem.characters(32)
      expect(tesla_api.class.headers).to include({"Authorization" => /Bearer [a-z0-9]{32}/})
    end
  end

  describe "#login!", vcr: { cassette_name: "client-login" } do
    it { is_expected.to be_a(TeslaApi::Client) }

    it "logs into the API" do
      tesla_api.login!(ENV["TESLA_PASS"])
      expect(a_request(:post, "https://#{URI.parse(tesla_api.class.base_uri).host}/oauth/token")).to have_been_made.once
    end

    it "sets a Bearer token" do
      tesla_api.login!(ENV["TESLA_PASS"])
      expect(tesla_api.class.headers).to include({"Authorization" => /Bearer [a-z0-9]{32}/})
    end
  end

  describe "#vehicles", vcr: {cassette_name: "client-vehicles"} do
    it "lists the vehicles on the account" do
      expect(tesla_api.vehicles).to include(TeslaApi::Vehicle)
    end
  end
end
