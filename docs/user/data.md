# User Information

## GET `/api/1/users/me`

Get your user information

### Response

```json
{
  "email": "elon@tesla.com",
  "full_name": "Elon Musk",
  "profile_image_url": "https://vehicle-files.prd.euw1.vn.cloud.tesla.com/profile_images/{IMG}.jpg"
}
```

<br/>

# Download Vault Profile

{% hint style='info' %}
This endpoint is a mystery, it returns what appears to be base64 encoded strings. When decoded it has a bunch of jibberish and then two certificates and some readable strings, and what appears to be a hash of something.
{% endhint %}

## GET `/api/1/users/vault_profile`

Download Vault Profile

### Response

```json
{
  "vault": "base64_jibberish"
}
```

<br/>

# Feature Config

## GET `/api/1/users/feature_config`

Get the feature config.

### Response

```json
{
  "signaling": {
    "enabled": true,
    "subscribe_connectivity": false
  }
}
```
