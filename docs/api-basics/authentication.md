---
description: The authentication process for the Tesla API
---

# Authentication

Tesla uses a separate SSO service (auth.tesla.com) for authentication across their app and website. This service is designed around a browser-based flow using OAuth 2.0, but also appears to have support for Open ID Connect. This supports both obtaining an access token and refreshing it as it expires.

{% hint style="warning" %}
Tesla's SSO service has a WAF (web application firewall) that may temporarily block you if you make repeated, execessive requests. This is to prevent bots from attacking the service, either as a brute force or denial-of-service attack. This normally presents as a "challenge" page, which requires running some non-trivial JavaScript code to validate that you have a full browser engine available. While you can potentially fully evaluate this page to remove the block, the best practice for now is to reduce your calls to the SSO service to a minimum and avoid things like automatic request retries. The service also expects TLS 1.2 or lower connections, so avoid connecting with TLS 1.3.
{% endhint %}

## Logging in

### Step 1: Obtain the login page

Subsequent requests to the SSO service will require a "code verifier" and "code challenge". These are a random 86-character alphanumeric string and its SHA-256 hash encoded in URL-safe base64 (base64url). Here is an example of generating them in Ruby, but you can apply this same process to other languages.

```ruby
code_verifier = random_string(86)
code_challenge = Base64.urlsafe_encode64(Digest::SHA256.hexdigest(code_verifier))
```

You will also need a stable `state` value for requests, which is a random string of any length.

Avoid setting a `User-Agent` header that looks like a browser (such as Chrome or Safari). The SSO service has protections in place that will require executing JavaScript if a browser-like user agent is detected.

#### GET `https://auth.tesla.com/oauth2/v3/authorize`

The first request returns HTML intended for display in the browser. You will need to parse this HTML for hidden input fields.

The request is made with a `redirect_url` of "https://auth.tesla.com/void/callback", which is a non-existent page. The Tesla app intercepts the request to this page to capture the authorization code.

##### Request parameters

| Field                   | Type             | Example                                | Description                                                     |
| :---------------------- | :--------------- | :------------------------------------- | :-------------------------------------------------------------- |
| `client_id`             | String, required | `ownerapi`                             | The OAuth client ID. Always "ownerapi"                          |
| `code_challenge`        | String, required | `123`                                  | The "code challenge"                                            |
| `code_challenge_method` | String, required | `S256`                                 | The code challenge hash method. Always "S256" (SHA-256)         |
| `redirect_uri`          | String, required | `https://auth.tesla.com/void/callback` | The redirect URL. Always "https://auth.tesla.com/void/callback" |
| `response_type`         | String, required | `code`                                 | The type of expected response. Always "code"                    |
| `scope`                 | String, required | `openid email offline_access`          | The authentication scope. Always "openid email offline_access"  |
| `state`                 | String, required | `123`                                  | The OAuth state value. Any random string.                       |
| `login_hint`            | String, optional | `elon@tesla.com`                       | The email for the authenticating Tesla account                  |

##### Response

This returns an HTML response body. There will be a `<form>` with hidden `<input>` elements that contain session-based information to prevent CSRF attacks. At the moment, they appear to be `_csrf`, `_phase`, `_process`, `transaction_id`, and `cancel`, but they may change due to server-side changes by Tesla. These must be provided in the POST body to validate the following request.

The response will also include a `set-cookie` header that includes a session ID cookie. This should be provided to the following request as a `Cookie` header so that the SSO service can match up your request with private data it has in that session.

When the optional `login_hint` parameter is supplied with the `GET` request and the email is registered with a Tesla SSO service in another region this will respond with a 303 HTTP response code (See Other), which will redirect you to the Tesla SSO service in that region (e.g. auth.tesla.cn). Should this redirect happen you should continue using the region specific Tesla SSO host name in all subsequent steps. Easy way to test this is to use `auth.tesla.cn` with `login_hint` using an email registered under `auth.tesla.com`.

### Step 2: Obtain an authorization code

This will simulate a user submitting the form from the previous request in their browser. Ensure that the hidden `<input>`s are provided as POST body parameters and the `Cookie` header is set.

#### POST `https://auth.tesla.com/oauth2/v3/authorize`

```http
Cookie: {cookie value from set-cookie header}
```

##### Request parameters

> Note: These are query parameters, not part of the POST body

| Field                   | Type             | Example                                | Description                                                     |
| :---------------------- | :--------------- | :------------------------------------- | :-------------------------------------------------------------- |
| `client_id`             | String, required | `ownerapi`                             | The OAuth client ID. Always "ownerapi"                          |
| `code_challenge`        | String, required | `123`                                  | The "code challenge"                                            |
| `code_challenge_method` | String, required | `S256`                                 | The code challenge hash method. Always "S256" (SHA-256)         |
| `redirect_uri`          | String, required | `https://auth.tesla.com/void/callback` | The redirect URL. Always "https://auth.tesla.com/void/callback" |
| `response_type`         | String, required | `code`                                 | The type of expected response. Always "code"                    |
| `scope`                 | String, required | `openid email offline_access`          | The authentication scope. Always "openid email offline_access"  |
| `state`                 | String, required | `123`                                  | The OAuth state value. Any random string.                       |

> Note: This is the contents of the POST body. These should be form encoded (`application/x-www-form-urlencoded`).

| Field              | Type               | Example             | Description                                       |
| :----------------- | :----------------- | :------------------ | :------------------------------------------------ |
| hidden input names | String[], required | hidden input values | The fields from the HTML's hidden `<input>`s      |
| `identity`         | String, required   | `elon@tesla.com`    | The email for the authenticating Tesla account    |
| `credential`       | String, required   | `brbgoingtomars`    | The password for the authenticating Tesla account |

##### Response

This will respond with a 302 HTTP response code, which will attempt to redirect to the redirect_uri with additional query parameters added. This new URL is located in the `location` header. You should not follow it, as it is non-existent. Instead, you should parse this URL and extract the `code` query parameter, which is your authorization code.

```http
Location: https://auth.tesla.com/void/callback?code=c7dc7f8196d001632558d6632558d6243632558d6b6d60f82c0632558d67&state=aGZzZGpzZnNk&issuer=https%3A%2F%2Fauth.tesla.com%2Foauth2%2Fv3
```

### Step 3: Exchange authorization code for bearer token

#### POST `https://auth.tesla.com/oauth2/v3/token`

This is a standard [OAuth 2.0 Authorization Code exchange](https://oauth.net/2/grant-types/authorization-code/). This endpoint uses JSON for the request and response bodies.

##### Request parameters

| Field           | Type             | Example                                | Description                                                     |
| :-------------- | :--------------- | :------------------------------------- | :-------------------------------------------------------------- |
| `grant_type`    | String, required | `authorization_code`                   | The type of OAuth grant. Always "authorization_code"            |
| `client_id`     | String, required | `ownerapi`                             | The OAuth client ID. Always "ownerapi"                          |
| `code`          | String, required | `123`                                  | The authorization code from the last request.                   |
| `code_verifier` | String, required | `123`                                  | The code verifier string generated previously.                  |
| `redirect_uri`  | String, required | `https://auth.tesla.com/void/callback` | The redirect URL. Always "https://auth.tesla.com/void/callback" |

```json
{
  "grant_type": "authorization_code",
  "client_id": "ownerapi",
  "code": "123",
  "code_verifier": "123",
  "redirect_uri": "https://auth.tesla.com/void/callback"
}
```

##### Response

The response varies. If the user has no MFA enabled, the response will be:

```json
{
  "access_token": "eyJaccess",
  "refresh_token": "eyJrefresh",
  "expires_in": 300,
  "state": "of the union",
  "token_type": "Bearer"
}
```

However, if the user has MFA enabled the response will be an HTML document with a `passcode` field inside it. This is for the TOTP (Time-based-One-time Password).

To authenticate, you first need to get the list of known factors on the account, by requesting the `/authorize/mfa/factors` endpoint via GET. You also need to supply the `transaction_id` from the `/authorize` endpoint with this request.

| Field            |       Type       | Description                                        |
| :--------------- | :--------------: | -------------------------------------------------- |
| `transaction_id` | String, required | The transaction id from the `/authorize` endpoint. |

```json
{
  "transaction_id": "transaction_id"
}
```

After doing this you need to send a POST request to the `/authorize/mfa/verify` endpoint with the `transaction_id`, `factor_id` and the current TOTP `passcode`. Similar to step 1, you also need to pass an additional `_csrf` field to the `/authorize/mfa/verify` endpoint. However, this is a different one from the first request, and has to fetched and parsed from the response of the `/authorize` endpoint that you hit earlier (the same response that had a `passcode` field inside of it).

| Field            |       Type       | Description                                                        |
| :--------------- | :--------------: | ------------------------------------------------------------------ |
| `transaction_id` | String, required | The previously used transaction id from the `/authorize` endpoint. |
| `factor_id`      | String, required | The factor id from the `/authorize/mfa/factors` endpoint.          |
| `passcode`       | String, required | The current TOTP passcode.                                         |
| `_csrf`          | String, required | The csrf parsed from response of `/authorize`                      |

```json
{
  "transaction_id": "transaction_id",
  "factor_id": "factor_id",
  "passcode": "passcode",
  "_csrf": "csrf"
}
```

This will validate the current `transaction_id` and allow for the previous request to POST successfully with the `transaction_id` as a form body parameter.

## Making requests

Requests are made using the `access_token` provided with the response. It is treated as an [OAuth 2.0 Bearer Token](https://oauth.net/2/bearer-tokens/) and expires every eight hours. This token is passed along in an Authorization header with all future requests:

```http
Authorization: Bearer {access_token}
```

## Refreshing an access token

#### POST `https://auth.tesla.com/oauth2/v3/token`

This uses the SSO `refresh_token` from Step 3 above to do an [OAuth 2.0 Refresh Token Grant](https://oauth.net/2/grant-types/refresh-token/). The refreshed access token is to be used directly with the Owner API as a bearer token as per the above _Making requests_ section.

This endpoint uses JSON for the request and response bodies.

##### Request parameters

| Field           | Type             | Example                       | Description                                                    |
| :-------------- | :--------------- | :---------------------------- | :------------------------------------------------------------- |
| `grant_type`    | String, required | `refresh_token`               | The type of OAuth grant. Always "refresh_token"                |
| `client_id`     | String, required | `ownerapi`                    | The OAuth client ID. Always "ownerapi"                         |
| `refresh_token` | String, required | `123`                         | The refresh token from a prior authentication.                 |
| `scope`         | String, required | `openid email offline_access` | The authentication scope. Always "openid email offline_access" |

```json
{
  "grant_type": "refresh_token",
  "client_id": "ownerapi",
  "refresh_token": "eyJrefresh",
  "scope": "openid email offline_access"
}
```

##### Response

```json
{
  "access_token": "eyJaccess",
  "refresh_token": "eyJrefresh",
  "id_token": "id",
  "expires_in": 300,
  "token_type": "Bearer"
}
```
