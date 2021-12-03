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

## POST `/api/1/vehicles/{id}/command/set_charging_amps`

Sets the charge amps limit to a custom value.

### Parameters

| Parameter     | Example | Description                          |
| :------------ | :------ | :----------------------------------- |
| charging_amps | 32      | The max amps to use during charging. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/set_scheduled_charging`

Set the scheduled charge.

### Parameters

| Parameter | Example | Description                                |
| :-------- | :------ | :----------------------------------------- |
| enable    | true    | true for on, false for off.                |
| time      | 1410    | time in minutes since midnight local time. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/set_scheduled_departure`

Set the scheduled departure.

### Parameters

| Parameter                       | Example | Description                                                                                                                |
| :------------------------------ | :------ | :------------------------------------------------------------------------------------------------------------------------- |
| enable                          | true    | true for on, false for off.                                                                                                |
| departure_time                  | 540     | true if (preconditioning_enabled or off_peak_charging_enabled), false otherwise (this condition may change in the future). |
| preconditioning_enabled         | true    | true for on, false for off.                                                                                                |
| preconditioning_weekdays_only   | true    | true for on, false for off.                                                                                                |
| off_peak_charging_enabled       | true    | true for on, false for off.                                                                                                |
| off_peak_charging_weekdays_only | true    | true for on, false for off.                                                                                                |
| end_off_peak_time               | 450     | time in minutes since midnight local time.                                                                                 |

### Response

```json
{
  "reason": "",
  "result": true
}
```
