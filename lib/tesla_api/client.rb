module TeslaApi
  class Client
    include HTTParty
    base_uri "https://owner-api.teslamotors.com/api/1"
    format :json

    attr_reader :email, :token, :client_id, :client_secret

    def initialize(email, client_id = ENV["TESLA_CLIENT_ID"], client_secret = ENV["TESLA_CLIENT_SECRET"])
      @email = email
      @client_id = client_id
      @client_secret = client_secret
    end

    def token=(token)
      @token = token
      self.class.headers "Authorization" => "Bearer #{token}"
    end

    def login!(password)
      response = self.class.post(
          "https://owner-api.teslamotors.com/oauth/token",
          body: {
              "grant_type" => "password",
              "client_id" => client_id,
              "client_secret" => client_secret,
              "email" => email,
              "password" => password
          }
      )

      self.token = response["access_token"]
    end

    def vehicles
      self.class.get("/vehicles")["response"].map { |v| Vehicle.new(self.class, email, v["id"], v) }
    end
  end
end
