---
description: The authentication process for the Tesla API
---

# Authentication

> ## ⚠ This information is out of date ⚠
>
> Tesla has deprecated the `/oauth/token` endpoint in favor of using `auth.tesla.com`. I'm working on updating the documentation as soon as possible. Feel free to discuss this in [issue #260](https://github.com/timdorr/tesla-api/issues/260).

## POST `/oauth/token?grant_type=password`

The initial authentication process is via [an OAuth 2.0 Password Grant](https://oauth.net/2/grant-types/password/) with the same credentials used for tesla.com and the mobile apps.

The current client ID and secret are [available here](https://pastebin.com/pS7Z6yyP).

You will get back an `access_token` which is treated as [an OAuth 2.0 Bearer Token](https://oauth.net/2/bearer-tokens/). This token is passed along in an `Authorization` header with all future requests:

```http
Authorization: Bearer {access_token}
```

The access token has a 45 day expiration.

### Request parameters

| Field           | Type             | Example                | Description                                       |
| :-------------- | :--------------- | :--------------------- | :------------------------------------------------ |
| `grant_type`    | String, required | `password`             | The type of OAuth grant. Always "password"        |
| `client_id`     | String, required | `abc`                  | The OAuth client ID                               |
| `client_secret` | String, required | `123`                  | The OAuth client secret                           |
| `email`         | String, required | `elon@teslamotors.com` | The email for the authenticating Tesla account    |
| `password`      | String, required | `edisonsux`            | The password for the authenticating Tesla account |

### Request

```json
{
  "grant_type": "password",
  "client_id": "abc",
  "client_secret": "123",
  "email": "elon@teslamotors.com",
  "password": "edisonsux"
}
```

### Response

```json
{
  "access_token": "abc123",
  "token_type": "bearer",
  "expires_in": 3888000,
  "refresh_token": "cba321",
  "created_at": 1538359034
}
```

## POST `/oauth/token?grant_type=refresh_token`

You can use the `refresh_token` from the Password Grant to do [an OAuth 2.0 Refresh Token Grant](https://oauth.net/2/grant-types/refresh-token/) and obtain a new access token. Note: This will invalidate the previous access token.

### Request parameters

| Field           | Type             | Example         | Description                                               |
| :-------------- | :--------------- | :-------------- | :-------------------------------------------------------- |
| `grant_type`    | String, required | `refresh_token` | The type of OAuth grant. Always "refresh_token"           |
| `client_id`     | String, required | `abc`           | The OAuth client ID                                       |
| `client_secret` | String, required | `123`           | The OAuth client secret                                   |
| `refresh_token` | String, required | `cba321`        | The refresh token returned from a previous token request. |

### Request

```json
{
  "grant_type": "refresh_token",
  "client_id": "abc",
  "client_secret": "123",
  "refresh_token": "cba321"
}
```

### Response

```json
{
  "access_token": "abc123",
  "token_type": "bearer",
  "expires_in": 3888000,
  "refresh_token": "cba321",
  "created_at": 1538359034
}
```
