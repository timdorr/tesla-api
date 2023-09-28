---
description: Endpoints for getting an account's vehicles
---

# Vehicles

A logged in user can have multiple vehicles under their account (congrats on being rich!). This resource is primarily responsible for listing the vehicles and the basic details about them.

#### `vehicle_id` vs `id`

One potentially confusing part of Tesla's API is the switching use of the `id` and `vehicle_id` of the car. The `id` field is an identifier for the car on the owner-api endpoint. The `vehicle_id` field is for identifying the car across different endpoints, such as the streaming or Autopark APIs.

For the state and command APIs, you should be using the `id` field. If your JSON parser doesn't support large numbers (&gt;32 bit), then you can use the `id_s` field for a string version of the ID.

## GET `/api/1/vehicles?page={page}`

Retrieve a list of your owned vehicles.

The list is limited to a maximum of 100 entries. Use the `page` GET parameter to iterate over the response page and use
the response `count` variable to determine if another request should be made.

### Request parameters

| Field  | Example | Description     | Required | Default |
| :----- | :------ | :-------------- | :------- | :------ |
| `page` | `1`     | The page number | no       | 1       |

### Response

```json
{
  "response": [
    {
      "id": 12345678901234567,
      "vehicle_id": 1234567890,
      "vin": "5YJSA11111111111",
      "display_name": "Nikola 2.0",
      "color": null,
      "tokens": ["abcdef1234567890", "1234567890abcdef"],
      "state": "online",
      "in_service": false,
      "id_s": "12345678901234567",
      "calendar_enabled": true,
      "api_version": 7,
      "backseat_token": null,
      "backseat_token_updated_at": null
    }
  ],
  "count": 1
}
```

## GET `/api/1/vehicles/{id}`

These resources are read-only and determine the state of the vehicle's various sub-systems.

### URL parameters

| Field | Example             | Description                                  |
| :---- | :------------------ | :------------------------------------------- |
| `id`  | `12345678901234567` | The `id` of the car. (Not the `vehicle_id`!) |

### Response

```json
{
  "response": {
    "id": 12345678901234567,
    "vehicle_id": 1234567890,
    "vin": "5YJSA11111111111",
    "display_name": "Nikola 2.0",
    "color": null,
    "tokens": ["abcdef1234567890", "1234567890abcdef"],
    "state": "online",
    "in_service": false,
    "id_s": "12345678901234567",
    "calendar_enabled": true,
    "api_version": 7,
    "backseat_token": null,
    "backseat_token_updated_at": null
  }
}
```
