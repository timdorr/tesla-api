module TeslaApi
  class Client
    include HTTParty
    base_uri "https://owner-api.teslamotors.com/api/1"
    format :json

    attr_reader :email

    def initialize(email, password, client_id, client_secret)
      @email = email
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
      self.class.headers "Authorization" => "Bearer #{response["access_token"]}"
    end

    def vehicles
      self.class.get("/vehicles")["response"].map { |v| Vehicle.new(self.class, email, v["id"], v) }
    end
  end
end
