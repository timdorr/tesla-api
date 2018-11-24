# Alerts

Controls for honking the horn and flashing the lights.

## POST `/api/1/vehicles/{id}/command/honk_horn`

Honks the horn twice.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/flash_lights`

Flashes the headlights once.

### Response

```json
{
  "reason": "",
  "result": true
}
```
