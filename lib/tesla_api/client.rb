module TeslaApi
  class Client
    attr_reader :api, :email, :access_token, :access_token_expires_at, :refresh_token, :client_id, :client_secret

    BASE_URI = "https://owner-api.teslamotors.com"
    SSO_URI = "https://auth.tesla.com"

    def initialize(
      email: nil,
      access_token: nil,
      access_token_expires_at: nil,
      refresh_token: nil,
      client_id: ENV["TESLA_CLIENT_ID"],
      client_secret: ENV["TESLA_CLIENT_SECRET"],
      retry_options: nil,
      base_uri: nil,
      sso_uri: nil,
      client_options: {}
    )
      @email = email
      @base_uri = base_uri || BASE_URI
      @sso_uri = sso_uri || SSO_URI

      @client_id = client_id
      @client_secret = client_secret

      @access_token = access_token
      @access_token_expires_at = access_token_expires_at
      @refresh_token = refresh_token

      @api = Faraday.new(
        @base_uri + "/api/1",
        client_options
      ) { |conn|
        # conn.response :logger, nil, {headers: true, bodies: true}
        conn.request :json
        conn.response :json
        conn.response :raise_error
        conn.request :retry, retry_options if retry_options # Must be registered after :raise_error
        conn.adapter Faraday.default_adapter
      }
    end

    def refresh_access_token
      response = @api.post(
        @sso_uri + "/oauth2/v3/token",
        {
          grant_type: "refresh_token",
          client_id: "ownerapi",
          refresh_token: refresh_token,
          scope: "openid email offline_access"
        }
      ) do |req|
        req.headers["Accept"] = "application/json"
      end.body

      @access_token = response["access_token"]
      @refresh_token = response["refresh_token"]
      @access_token_expires_at = Time.at(Time.now.to_f + response["expires_in"].to_f).to_datetime

      response
    end

    def login!(password, mfa_code: nil)
      code_verifier = rand(36**86).to_s(36)
      code_challenge = Base64.urlsafe_encode64(Digest::SHA256.hexdigest(code_verifier))
      state = rand(36**20).to_s(36)

      sso_api = Faraday.new(@sso_uri + "/oauth2/v3", ssl: {version: :TLSv1_2}) { |conn|
        # conn.response :logger, nil, {headers: true, bodies: true}
        conn.adapter Faraday.default_adapter
      }

      response = sso_api.get(
        "authorize",
        {
          client_id: "ownerapi",
          code_challenge: code_challenge,
          code_challenge_method: "S256",
          redirect_uri: "https://auth.tesla.com/void/callback",
          response_type: "code",
          scope: "openid email offline_access",
          state: state
        }
      )

      cookie = response.headers["set-cookie"].split(" ").first
      parameters = response.body.scan(/type="hidden" name="(.*?)" value="(.*?)"/).to_h
      transaction_id = parameters["transaction_id"]

      response = sso_api.post(
        "authorize?" + URI.encode_www_form({
          client_id: "ownerapi",
          code_challenge: code_challenge,
          code_challenge_method: "S256",
          redirect_uri: "https://auth.tesla.com/void/callback",
          response_type: "code",
          scope: "openid email offline_access",
          state: state
        }),
        URI.encode_www_form(parameters.merge(
          "identity" => email,
          "credential" => password
        )),
        "Cookie" => cookie
      )

      if response.body.match?(/passcode/)
        raise MFARequired if mfa_code.nil?
        raise MFAInvalidPasscode unless mfa_code.to_s.match?(/^\d{6}$/)

        factors = api.get(
          @sso_uri + "/oauth2/v3/authorize/mfa/factors",
          {
            transaction_id: transaction_id
          },
          "Cookie" => cookie
        ).body

        response = @api.post(
          @sso_uri + "/oauth2/v3/authorize/mfa/verify",
          {
            factor_id: factors.dig("data", 0, "id"),
            passcode: mfa_code.to_s,
            transaction_id: transaction_id
          },
          "Cookie" => cookie
        ).body

        raise MFAInvalidPasscode unless response.dig("data", "valid")

        response = sso_api.post(
          "authorize?" + URI.encode_www_form({
            client_id: "ownerapi",
            code_challenge: code_challenge,
            code_challenge_method: "S256",
            redirect_uri: "https://auth.tesla.com/void/callback",
            response_type: "code",
            scope: "openid email offline_access",
            state: state
          }),
          URI.encode_www_form({"transaction_id" => transaction_id}),
          "Cookie" => cookie
        )
      end

      code = CGI.parse(URI(response.headers["location"]).query)["code"].first
      exchange_oauth_code(code, code_verifier)
    end

    def exchange_oauth_code(code, code_verifier)
      response = api.post(
        @sso_uri + "/oauth2/v3/token",
        {
          grant_type: "authorization_code",
          client_id: "ownerapi",
          code: code,
          code_verifier: code_verifier,
          redirect_uri: "https://auth.tesla.com/void/callback"
        }
      ).body

      @refresh_token = response["refresh_token"]
      exchange_sso_access_token(response["access_token"])
    end

    def exchange_sso_access_token(access_token)
      response = api.post(
        @base_uri + "/oauth/token",
        {
          grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
          client_id: client_id,
          client_secret: client_secret
        },
        "Authorization" => "Bearer #{access_token}"
      ).body

      @access_token = response["access_token"]
      @access_token_expires_at = Time.at(response["created_at"].to_f + response["expires_in"].to_f).to_datetime

      response
    end

    def expired?
      return true if access_token_expires_at.nil?
      access_token_expires_at <= DateTime.now
    end

    def get(url)
      api.get(url.sub(/^\//, ""), nil, {"Authorization" => "Bearer #{access_token}"}).body
    end

    def post(url, body: nil)
      api.post(url.sub(/^\//, ""), body, {"Authorization" => "Bearer #{access_token}"}).body
    end

    def vehicles
      get("/vehicles")["response"].map { |v| Vehicle.new(self, email, v["id"], v) }
    end

    def vehicle(id)
      Vehicle.new(self, email, id, get("/vehicles/#{id}")["response"])
    end
  end

  class MFARequired < StandardError; end

  class MFAInvalidPasscode < StandardError; end
end
