# Speed Limit

## POST `/api/1/vehicles/{id}/command/speed_limit_set_limit`

Sets the maximum speed allowed when Speed Limit Mode is active.

### Parameters

| Parameter | Example | Description |
| :--- | :--- | :--- |
| limit_mph | 65 | The speed limit in MPH. Must be between 50-90. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/speed_limit_activate`

Activates Speed Limit Mode at the currently set speed.

### Parameters

| Parameter | Example | Description |
| :--- | :--- | :--- |
| pin | 1234 | The existing PIN, if previously set, or a new 4 digit PIN. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/speed_limit_deactivate`

Deactivates Speed Limit Mode if it is currently active.

### Parameters

| Parameter | Example | Description |
| :--- | :--- | :--- |
| pin | 1234 | The 4 digit PIN used to activate Speed Limit Mode. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/speed_limit_clear_pin`

Clears the currently set PIN for Speed Limit Mode.

### Parameters

| Parameter | Example | Description |
| :--- | :--- | :--- |
| pin | 1234 | The 4 digit PIN used to activate Speed Limit Mode. |

### Response

```json
{
  "reason": "",
  "result": true
}
```
