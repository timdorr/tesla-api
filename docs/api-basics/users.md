---
description: Endpoints for getting information about the current user
---

# Users

These endpoints provide data on the current user.

## GET `/api/1/users/me`

Get the current user's information.

### Response

```json
{
  "email": "elon@tesla.com",
  "full_name": "Elon Musk",
  "profile_image_url": "https://vehicle-files.prd.euw1.vn.cloud.tesla.com/profile_images/{IMG}.jpg"
}
```

## GET `/api/1/users/vault_profile`

{% hint style='info' %}
This endpoint is a mystery, it returns what appears to be base64 encoded strings. When decoded it has a bunch of jibberish and then two certificates and some readable strings, and what appears to be a hash of something.
{% endhint %}

### Response

```json
{
  "vault": "base64_jibberish"
}
```

## GET `/api/1/users/feature_config`

Get the feature configuration for the mobile app.

### Response

```json
{
  "signaling": {
    "enabled": true,
    "subscribe_connectivity": false
  }
}
```
