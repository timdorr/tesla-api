# Sentry Mode

## POST `/api/1/vehicles/{id}/command/set_sentry_mode`

Turns sentry mode on or off.

### Parameters

| Parameter | Example | Description                         |
| :-------- | :------ | :---------------------------------- |
| on        | true    | True to turn on, false to turn off. |

### Response

```json
{
  "reason": "",
  "result": true
}
```
