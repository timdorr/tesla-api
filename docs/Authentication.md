---
title: Authentication
breadcrumbs: Authentication
---

## Tokens [/oauth/token]

### Get an Access Token [POST]
Performs the login. Takes in an plain text email and password, matching the owner's login information for [https://my.teslamotors.com/user/login](https://my.teslamotors.com/user/login).

Returns a `access_token` which is passed along as a header with all future requests to authenticate the user.

You must provide the `Authorization: Bearer {access_token}` header in all other requests.

The current client ID and secret are [available here](http://pastebin.com/fX6ejAHd)

#### Request parameters

  - **grant_type**: `password` (string) - The type of oAuth grant. Always "password"
  - **client_id**: `abc` (string) - The oAuth client ID
  - **client_secret**: `123` (string) - The oAuth client secret
  - **email**: `elon@teslamotors.com` (string) - The email for my.teslamotors.com
  - **password**: `edisonsux` (string) - The password for my.teslamotors.com

#### Response

```json
{
  "access_token": "abc123",
  "token_type": "bearer",
  "expires_in": 7776000,
  "created_at": 1457385291,
  "refresh_token" : "cba321"
}
```
