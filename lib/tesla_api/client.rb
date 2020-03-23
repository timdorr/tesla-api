module TeslaApi
  class Client
    attr_reader :api, :email, :access_token, :access_token_expires_at, :refresh_token, :client_id, :client_secret

    def initialize(
        email: nil,
        access_token: nil,
        access_token_expires_at: nil,
        refresh_token: nil,
        client_id: ENV['TESLA_CLIENT_ID'],
        client_secret: ENV['TESLA_CLIENT_SECRET'],
        retry_options: nil
    )
      @email = email

      @client_id = client_id
      @client_secret = client_secret

      @access_token = access_token
      @access_token_expires_at = access_token_expires_at
      @refresh_token = refresh_token

      @api = Faraday.new(
        headers: { 'User-Agent' => "github.com/timdorr/tesla-api v:#{VERSION}" }
      ) do |conn|
        conn.request :json
        conn.response :json
        conn.response :raise_error
        conn.request :retry, retry_options if retry_options # Must be registered after :raise_error
        conn.adapter Faraday.default_adapter
      end
    end

    def refresh_access_token
      response = api.post(
        base_uri + '/oauth/token',
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
        base_uri + '/oauth/token',
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
      api.get(base_uri_api + url, nil, { 'Authorization' => "Bearer #{access_token}" }).body
    end

    def post(url, body: nil)
      api.post(base_uri_api + url, body, { 'Authorization' => "Bearer #{access_token}" }).body
    end

    def vehicles
      get('/vehicles')['response'].map { |v| Vehicle.new(self, email, v['id'], v) }
    end

    def vehicle(id)
      Vehicle.new(self, email, id, self.get("/vehicles/#{id}")['response'])
    end

    def base_uri_api
      base_uri + '/api/1'
    end

    def base_uri
      'https://owner-api.teslamotors.com'
    end
  end
end
