require 'spec_helper'

RSpec.describe TeslaApi::Client do
  subject(:tesla_api) { TeslaApi::Client.new(ENV['TESLA_EMAIL']) }

  describe '#new client' do
    it 'has no expiry date' do
      expect(tesla_api.expired_at).to eq(nil)
    end

    it 'has a expiry status set to true' do
      expect(tesla_api.expired?).to eq(true)
    end
  end

  describe '#token=' do
    it 'sets a Bearer token' do
      tesla_api.token = Faker::Lorem.characters(32)
      expect(tesla_api.class.headers).to include({'Authorization' => /Bearer [a-z0-9]{32}/})
    end
  end

  describe '#login!', vcr: { cassette_name: 'client-login' } do
    it { is_expected.to be_a(TeslaApi::Client) }

    it 'logs into the API' do
      tesla_api.login!(ENV['TESLA_PASS'])
      expect(a_request(:post, "https://#{URI.parse(tesla_api.class.base_uri).host}/oauth/token")).to have_been_made.once
    end

    it 'set a expiry date' do
      tesla_api.login!(ENV['TESLA_PASS'])
      expect(tesla_api.expired_at).to eq(Time.at(1475777133 + 7776000).to_datetime)
    end

    it 'expose expiry status' do
      tesla_api.login!(ENV['TESLA_PASS'])
      tesla_api.created_at = (Time.now - 1).to_i
      expect(tesla_api.expired?).to eq(false)
    end

    it 'is expired when has a 90+ days old date' do
      tesla_api.login!(ENV['TESLA_PASS'])
      tesla_api.created_at = (Time.now - 7776000 - 1).to_i
      expect(tesla_api.expired?).to eq(true)
    end

    it 'sets a Bearer token header' do
      tesla_api.login!(ENV['TESLA_PASS'])
      expect(tesla_api.class.headers).to include({'Authorization' => /Bearer [a-z0-9]{32}/})
    end

    it 'obtains a Bearer token' do
      tesla_api.login!(ENV['TESLA_PASS'])
      expect(tesla_api.token).to match(/[a-z0-9]{32}/)
    end
  end

  describe '#vehicles', vcr: {cassette_name: 'client-vehicles'} do
    it 'lists the vehicles on the account' do
      expect(tesla_api.vehicles).to include(TeslaApi::Vehicle)
    end
  end
end
