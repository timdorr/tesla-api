module TeslaApi
  class Client
    attr_reader :api, :email, :access_token, :access_token_expires_at, :refresh_token, :client_id, :client_secret

    BASE_URI = 'https://owner-api.teslamotors.com/api/1'

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

      @access_token = access_token
      @access_token_expires_at = access_token_expires_at
      @refresh_token = refresh_token

      @api = Faraday.new(
        BASE_URI,
        headers: { 'User-Agent' => "github.com/timdorr/tesla-api v:#{VERSION}" }
      ) do |conn|
        conn.request :json
        conn.response :json
        conn.response :raise_error
        conn.adapter Faraday.default_adapter
      end
    end

    def refresh_access_token
      response = api.post(
        'https://owner-api.teslamotors.com/oauth/token',
        {
          grant_type: 'refresh_token',
          client_id: client_id,
          client_secret: client_secret,
          refresh_token: refresh_token
        }
      ).body

      @access_token = response['access_token']
      @access_token_expires_at = Time.at(response['created_at'].to_f + response['expires_in'].to_f).to_datetime
      @refresh_token = response['refresh_token']

      response
    end

    def login!(password)
      response = api.post(
        'https://owner-api.teslamotors.com/oauth/token',
        {
          grant_type: 'password',
          client_id: client_id,
          client_secret: client_secret,
          email: email,
          password: password
        }
      ).body

      @access_token = response['access_token']
      @access_token_expires_at = Time.at(response['created_at'].to_f + response['expires_in'].to_f).to_datetime
      @refresh_token = response['refresh_token']

      response
    end

    def expired?
      return true if access_token_expires_at.nil?
      access_token_expires_at <= DateTime.now
    end

    def get(url)
      api.get(url.sub(/^\//, ''), nil, { 'Authorization' => "Bearer #{access_token}" }).body
    end

    def post(url, body: nil)
      api.post(url.sub(/^\//, ''), body, { 'Authorization' => "Bearer #{access_token}" }).body
    end

    def vehicles
      get('/vehicles')['response'].map { |v| Vehicle.new(self, email, v['id'], v) }
    end

    def vehicle(id)
      Vehicle.new(self, email, id, self.get("/vehicles/#{id}")['response'])
    end
  end
end
