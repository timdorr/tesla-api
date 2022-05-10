# Sentry Mode

## POST `/api/1/vehicles/{id}/command/set_sentry_mode`

Turns sentry mode on or off.

### Request

This endpoint requires a singular parameter `on`, inside the POST body with the value set to `true` for enabling and `false` for disabling sentry mode.

### Example

```json
{
  "on": "true"
}
```

### Response

```json
{
  "reason": "",
  "result": true
}
```
