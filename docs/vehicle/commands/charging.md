# Charging

Commands related to the charging of the vehicle.

## POST `/api/1/vehicles/{id}/command/charge_port_door_open`

Opens the charge port or unlocks the cable.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/charge_port_door_close`

For vehicles with a motorized charge port, this closes it.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/charge_start`

If the car is plugged in but not currently charging, this will start it charging.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/charge_stop`

If the car is currently charging, this will stop it.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/charge_standard`

Sets the charge limit to "standard" or ~90%.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/charge_max_range`

Sets the charge limit to "max range" or 100%.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/set_charge_limit`

Sets the charge limit to a custom value.

### Parameters

| Parameter | Example | Description                                   |
| :-------- | :------ | :-------------------------------------------- |
| percent   | 75      | The percentage the battery will charge until. |

### Response

```json
{
  "reason": "",
  "result": true
}
```
