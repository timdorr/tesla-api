The authentication process is via [an OAuth 2.0 Password Grant](https://oauth.net/2/grant-types/password/) with the same credentials used for tesla.com and the mobile apps.

The current client ID and secret are [available here](https://pastebin.com/pS7Z6yyP).

You will get back an `access_token` which is treated as [an OAuth 2.0 Bearer Token](https://oauth.net/2/bearer-tokens/). This token is passed along in an `Authorization` header with all future requests: 

```http
Authorization: Bearer {access_token}
```

## POST `/oauth/token`

### Request parameters

| Field | Type | Example | Description |
|---|---|---|---|
| `grant_type` | String, required | `password` | The type of OAuth grant. Always "password" |
| `client_id` | String, required | `abc` | The OAuth client ID |
| `client_secret` | String, required | `123` | The OAuth client secret |
| `email` | String, required | `elon@teslamotors.com` | The email for the authenticating Tesla account |
| `password` | String, required | `edisonsux` | The password for the authenticating Tesla account |

### Response

```json
{
  "access_token":"abc123",
  "token_type":"bearer",
  "expires_in": 3888000,
  "refresh_token":"cba321",
  "created_at": 1538359034
}
```
