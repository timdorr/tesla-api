# Take Drive Note

{% hint style='info' %}
This endpoint currently returns `not_supported` as a response, due to not being implemented / enabled yet.
{% endhint %}

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

{% hint style='info' %}
Previously the endpoint returned `not_supported` as a response, due to not being implemented / enabled yet.
Later in app version 4.19.0-1639, the endpoint was removed from the `ownerapi_endpoints.json` file.
As of App version 4.20.5 you can change your vehicle name on software versions 2023.12+
{% endhint %}

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

# Screenshot

## GET `/api/1/vehicles/{id}/screenshot`

Take a screenshot of both displays (IC & MCU), which can be retrieved via the vehicle's CAN/OBD interface by Tesla Service. <br/>
This is can be triggered inside of the vehicle as well, by holding the lower left & right buttons (Model S & X pre-refresh) on the steering wheel for around 5-10 seconds, kind of like the scroll wheel MCU restart.

> Note: No on-screen message will appear.

### Response

```json
{
  "response": "teleforce-ab1c234d-1a23-12a3-12a3-ab123c456d7e"
}
```

# Remote Boombox

## POST `/api/1/vehicles/{id}/command/remote_boombox`

Let the car fart remotely on version 2022.44.25.1 and above or use boombox v2 on supported vehicles.

### Parameters

This endpoint does not require a POST body to fart remotely but needs one to use boombox v2.

| Parameter | Example | Description                             |
| :-------- | :------ | :-------------------------------------- |
| action    | 0       | Numerical value representing the action |

The available actions are:

| Action | Corresponding numerical value |
| :----- | :---------------------------- |
| Fart   | 0                             |

### Example

```json
{
  "action": 0
}
```

### Response

```json
{
  "result": true,
  "reason": ""
}
```
