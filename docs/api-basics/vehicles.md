---
description: Endpoints for getting an account's vehicles
---

# Vehicles

A logged in user can have multiple vehicles under their account (congrats on being rich!). This resource is primarily responsible for listing the vehicles and the basic details about them.

#### `vehicle_id` vs `id`

One potentially confusing part of Tesla's API is the switching use of the `id` and `vehicle_id` of the car. The `id` field is an identifier for the car on the owner-api endpoint. The `vehicle_id` field is for identifying the car across different endpoints, such as the streaming or Autopark APIs.

For the state and command APIs, you should be using the `id` field. If your JSON parser doesn't support large numbers (&gt;32 bit), then you can use the `id_s` field for a string version of the ID.

## GET `/api/1/vehicles`

Retrieve a list of your owned vehicles.

### Request parameters

### Response

```json
{
  "response": [
    {
      "id": 12345678901234567,
      "vehicle_id": 1234567890,
      "vin": "5YJSA11111111111",
      "display_name": "Nikola 2.0",
      "option_codes": "MDLS,RENA,AF02,APF1,APH2,APPB,AU01,BC0R,BP00,BR00,BS00,CDM0,CH05,PBCW,CW00,DCF0,DRLH,DSH7,DV4W,FG02,FR04,HP00,IDBA,IX01,LP01,ME02,MI01,PF01,PI01,PK00,PS01,PX00,PX4D,QTVB,RFP2,SC01,SP00,SR01,SU01,TM00,TP03,TR00,UTAB,WTAS,X001,X003,X007,X011,X013,X021,X024,X027,X028,X031,X037,X040,X044,YFFC,COUS",
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
    "option_codes": "MDLS,RENA,AF02,APF1,APH2,APPB,AU01,BC0R,BP00,BR00,BS00,CDM0,CH05,PBCW,CW00,DCF0,DRLH,DSH7,DV4W,FG02,FR04,HP00,IDBA,IX01,LP01,ME02,MI01,PF01,PI01,PK00,PS01,PX00,PX4D,QTVB,RFP2,SC01,SP00,SR01,SU01,TM00,TP03,TR00,UTAB,WTAS,X001,X003,X007,X011,X013,X021,X024,X027,X028,X031,X037,X040,X044,YFFC,COUS",
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
