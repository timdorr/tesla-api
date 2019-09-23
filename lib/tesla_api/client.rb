module TeslaApi
  class Client
    include HTTParty
    base_uri 'https://owner-api.teslamotors.com/api/1'
    headers 'User-Agent' => "github.com/timdorr/tesla-api v:#{VERSION}"
    format :json
    raise_on [401]

    attr_reader :email, :access_token, :access_token_expires_at, :refresh_token, :client_id, :client_secret

    def initialize(
        email: nil,
        access_token: nil,
        access_token_expires_at: nil,
        refresh_token: nil,
        client_id: ENV['TESLA_CLIENT_ID'],
        client_secret: ENV['TESLA_CLIENT_SECRET']
    )
      @email = email

      @client_id = client_id
      @client_secret = client_secret

      self.update_token(
          access_token: access_token,
          access_token_expires_at: access_token_expires_at,
          refresh_token: refresh_token
      )
    end

    def update_token(access_token:, access_token_expires_at:, refresh_token:)
      @access_token = access_token
      @access_token_expires_at = access_token_expires_at
      @refresh_token = refresh_token
      self.class.headers 'Authorization' => "Bearer #{access_token}" if access_token

      access_token
    end

    def refresh_access_token
      response = self.class.post(
          'https://owner-api.teslamotors.com/oauth/token',
          body: {
              grant_type: 'refresh_token',
              client_id: client_id,
              client_secret: client_secret,
              refresh_token: refresh_token
          }
      )

      self.update_token(
          access_token: response['access_token'],
          access_token_expires_at: Time.at(response['created_at'] + response['expires_in']).to_datetime,
          refresh_token: response['refresh_token']
      )

      response
    end

    def login!(password)
      response = self.class.post(
          'https://owner-api.teslamotors.com/oauth/token',
          body: {
              grant_type: 'password',
              client_id: client_id,
              client_secret: client_secret,
              email: email,
              password: password
          }
      )

      self.update_token(
          access_token: response['access_token'],
          access_token_expires_at: Time.at(response['created_at'] + response['expires_in']).to_datetime,
          refresh_token: response['refresh_token']
      )

      response
    end

    def expired?
      return true if access_token_expires_at.nil?
      access_token_expires_at <= DateTime.now
    end

    def vehicles
      self.class.get('/vehicles')['response'].map { |v| Vehicle.new(self.class, email, v['id'], v) }
    end

    private

    attr_writer :refresh_token
  end
end
