module TeslaApi
  class Client
    # include HTTParty
    # base_uri "https://owner-api.teslamotors.com/api/1"
    # format :json

    attr_reader :email, :token, :client_id, :client_secret, :headers

    def initialize(email, client_id = ENV["TESLA_CLIENT_ID"], client_secret = ENV["TESLA_CLIENT_SECRET"])
      @email = email
      @client_id = client_id
      @client_secret = client_secret
      @headers = {}
    end

    def token=(token)
      @token = token
      @headers = { "Authorization" => "Bearer #{token}" }
    end

    def expires_in=(seconds)
      @expires_in = seconds.to_f
    end

    def created_at=(timestamp)
      @created_at = Time.at(timestamp.to_f).to_datetime
    end

    def expired_at
      return nil unless defined?(@created_at)
      (@created_at.to_time + @expires_in.to_f).to_datetime
    end

    def expired?
      return true unless defined?(@created_at)
      expired_at <= DateTime.now
    end

    def login!(password)
      response = self.post(
          "https://owner-api.teslamotors.com/oauth/token",
          body: {
              "grant_type" => "password",
              "client_id" => client_id,
              "client_secret" => client_secret,
              "email" => email,
              "password" => password
          }
      )
      
      self.expires_in = response["expires_in"]
      self.created_at = response["created_at"]
      self.token      = response["access_token"]
    end

    def vehicles
      self.get("/vehicles")["response"].map { |v| Vehicle.new(self, email, v["id"], v) }
    end

    def self.base_uri
      "https://owner-api.teslamotors.com/api/1"
    end

    def get( url )
      HTTParty.get( self.class.base_uri + url, {headers: @headers, format: :json} )
    end

    def post( url, body = {})
      options = {header: @headers, format: :json}
      options.merge! body
      unless url =~ /^http/
        url  = self.class.base_uri + url
      end
      HTTParty.post( url, options )
    end
  end
end
