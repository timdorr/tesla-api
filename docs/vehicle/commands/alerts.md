# Alerts

Controls for honking the horn and flashing the lights.

## POST `/api/1/vehicles/{id}/command/honk_horn`

### URL Parameters

| Field |  Example | Description |
| :--- | :--- | :--- |
| `id` | `12345678901234567` | The id of the car. (Not the vehicle_id!) |

### Request parameters

None

### Headers

| Field |  Example | Description |
| :--- | :--- | :--- |
| `Authorization:Bearer` | `abc123` | The `access_token` returned from `/oath/token` |

### Response

```json
{
  "response": {
    "reason": "",
    "result": true
  }
}
,,,

## POST `/api/1/vehicles/{id}/command/flash_lights`

### URL Parameters

| Field |  Example | Description |
| :--- | :--- | :--- |
| `id` | `12345678901234567` | The id of the car. (Not the vehicle_id!) |

### Request parameters

None

### Headers

| Field |  Example | Description |
| :--- | :--- | :--- |
| `Authorization:Bearer` | `abc123` | The `access_token` returned from `/oath/token` |

### Response

```json
{
  "response": {
    "reason": "",
    "result": true
  }
}
,,,
