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
This endpoint is a mystery and it's current purpose is unknown, but we know how to decode it. First of all take the `base64_data` and decode it. Finally, deserialize the message using the `Vault` message from protobuf located at https://github.com/timdorr/tesla-api/blob/master/vault.proto
{% endhint %}

### Response

```json
{
  "vault": "base64_data"
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

## POST `/api/1/users/keys`

Update the name of a (bluetooth) key in all vehicles linked to the account. Refreshed inside the vehicle everytime the "Locks" menu is opened.

`kind` and `public_key` must be set, everything else only needs to be set if you want to change it.

### Parameters

| Parameter  | Example       | Description                                                                                                     |
| :--------- | :------------ | :-------------------------------------------------------------------------------------------------------------- |
| kind       | mobile_device | Must be "mobile_device"                                                                                         |
| public_key | 04ed05567b... | The ANSI X9.62/X9.63 representation of the public key that you wish to change (65 bytes long) - as a hex string |
| name       | Sam's Phone   | The name of the key (main text)                                                                                 |
| model      | iPhone 14 Pro | The model of the key (sub text)                                                                                 |

### Response

```json
{
  "response": true
}
```
