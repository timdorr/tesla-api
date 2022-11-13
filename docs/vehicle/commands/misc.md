# Take Drive Note

> Info: This endpoint currently returns `not_supported` as a response, due to not being implemented / enabled yet.

## POST `/api/1/vehicles/{id}/command/take_drivenote`

Take a drive note. (This feature might be related to the FSD beta bug reporting system.)

### Request

This endpoint requires a singular parameter `note`, inside the POST body with the value being anything you want to note.

### Example

```json
{
  "note": "42"
}
```

### Response

```json
{
  "result": true,
  "reason": ""
}
```

<br/>

# Set Vehicle Name

> Info: This endpoint currently returns `not_supported` as a response, due to not being implemented / enabled yet.

## POST `/api/1/vehicles/{id}/command/set_vehicle_name`

Set your vehicles name.

This endpoint requires a singular parameter `vehicle_name`, inside of the POST body, with any given name as a value.

### Example

```json
{
  "vehicle_name": "Nikola"
}
```

### Response

```json
{
  "result": true,
  "reason": ""
}
```

<br/>

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

# Screenshot

## GET `/api/1/vehicles/{id}/screenshot`

Take a screenshot of both displays (IC & MCU), which can be retrieved via the vehicle's CAN/OBD interface by Tesla Service. <br/>
This is can be triggered inside of the vehicle as well, by holding the lower left & right buttons (Model S & X pre-refresh) on the steering wheel for around 5-10 seconds, kind of like the scroll wheel MCU restart.

> Note: No on screen message will appear.

### Response

```json
{
  "response": "teleforce-ab1c234d-1a23-12a3-12a3-ab123c456d7e"
}
```

<br/>

# Download Vault Profile

> Info: This endpoint is a mystery, it returns what appears to be base64 encoded strings. When decoded it has a bunch of jibberish and then two certificates and some readable strings, and what appears to be a hash of something.

## GET `/api/1/users/vault_profile`

Download Vault Profile

### Response

```json
{
  "vault": "base64_jibberish"
}
```
