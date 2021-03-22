require "spec_helper"

RSpec.describe TeslaApi::Client do
  subject(:tesla_api) { TeslaApi::Client.new(email: ENV["TESLA_EMAIL"]) }

  it { is_expected.to be_a(TeslaApi::Client) }

  context "password grant auth" do
    describe "#new" do
      it "has no expiry date" do
        expect(tesla_api.access_token_expires_at).to eq(nil)
      end

      it "has a expiry status set to true" do
        expect(tesla_api.expired?).to eq(true)
      end
    end

    describe "#login!", vcr: {
      cassette_name: "client-login",
      match_requests_on: [
        :method,
        VCR.request_matchers.uri_without_params(:code_challenge, :state)
      ]
    } do
      it "logs into the API" do
        tesla_api.login!(ENV["TESLA_PASS"])
        expect(a_request(:post, "https://#{URI.parse(TeslaApi::Client::BASE_URI).host}/oauth/token")).to have_been_made.once
      end

      it "obtains a Bearer token" do
        tesla_api.login!(ENV["TESLA_PASS"])
        expect(tesla_api.access_token).to start_with("qts-")
      end

      it "set a expiry date" do
        tesla_api.login!(ENV["TESLA_PASS"])
        expect(tesla_api.access_token_expires_at).to eq(Time.at(1612019326 + 3888000).to_datetime)
      end

      it "obtains a refresh token" do
        tesla_api.login!(ENV["TESLA_PASS"])
        expect(tesla_api.refresh_token).to start_with("eyJ")
      end

      it "expose expiry status" do
        tesla_api.login!(ENV["TESLA_PASS"])
        expect(tesla_api.expired?).to eq(true)
      end

      describe "with MFA enabled", vcr: {
        cassette_name: "client-login-mfa",
        match_requests_on: [
          :method,
          VCR.request_matchers.uri_without_params(:code_challenge, :state)
        ]
      } do
        it "logs into the API" do
          tesla_api.login!(ENV["TESLA_PASS"], mfa_code: "123456")
          expect(a_request(:post, "https://#{URI.parse(TeslaApi::Client::BASE_URI).host}/oauth/token")).to have_been_made.once
        end

        it "requires an MFA code" do
          expect { tesla_api.login!(ENV["TESLA_PASS"]) }.to raise_error(TeslaApi::MFARequired)
        end
      end

      describe "with an invalid MFA passcode", vcr: {
        cassette_name: "client-login-mfa-invalid",
        match_requests_on: [
          :method,
          VCR.request_matchers.uri_without_params(:code_challenge, :state)
        ]
      } do
        it "requires a valid MFA code" do
          expect { tesla_api.login!(ENV["TESLA_PASS"], mfa_code: "123456") }.to raise_error(TeslaApi::MFAInvalidPasscode)
        end

        it "requires a correctly formatted MFA code" do
          expect { tesla_api.login!(ENV["TESLA_PASS"], mfa_code: "lolwut") }.to raise_error(TeslaApi::MFAInvalidPasscode)
        end
      end
    end
  end

  context "token grant auth" do
    subject(:tesla_api) {
      TeslaApi::Client.new(
        access_token: access_token,
        access_token_expires_at: DateTime.now + 1,
        refresh_token: refresh_token
      )
    }

    let(:access_token) { ENV["TESLA_ACCESS_TOKEN"] }
    let(:refresh_token) { ENV["TESLA_REFRESH_TOKEN"] }

    describe "#new" do
      it "is not expired" do
        expect(tesla_api.expired?).to eq(false)
      end
    end

    describe "#refresh_access_token", vcr: {
      cassette_name: "client-refresh",
      match_requests_on: [
        :method,
        VCR.request_matchers.uri_without_params(:code_challenge, :state)
      ]
    } do
      it "refreshes the access token" do
        tesla_api.refresh_access_token
        expect(tesla_api.access_token).not_to eq(access_token)
      end
    end
  end

  describe "#vehicles", vcr: {cassette_name: "client-vehicles"} do
    it "lists the vehicles on the account" do
      expect(tesla_api.vehicles).to include(TeslaApi::Vehicle)
    end
  end
end
