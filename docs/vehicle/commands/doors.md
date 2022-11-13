# Doors

## POST `/api/1/vehicles/{id}/command/door_unlock`

Unlocks the doors to the car. Extends the handles on the S.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/door_lock`

Locks the doors to the car. Retracts the handles on the S, if they are extended.

### Response

```json
{
  "reason": "",
  "result": true
}
```
