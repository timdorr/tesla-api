# Climate

## POST `/api/1/vehicles/{id}/command/auto_conditioning_start`

Start the climate control (HVAC) system. Will cool or heat automatically, depending on set temperature.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/auto_conditioning_stop`

Stop the climate control (HVAC) system.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/set_temps`

Sets the target temperature for the climate control (HVAC) system.

Note: The parameters are always in celcius, regardless of the region the car is in or the display settings of the car.

### Parameters

| Parameter      | Example | Description                                                 |
| :------------- | :------ | :---------------------------------------------------------- |
| driver_temp    | 23.4    | The desired temperature on the driver's side in celcius.    |
| passenger_temp | 23.4    | The desired temperature on the passenger's side in celcius. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/remote_seat_heater_request`

Sets the specified seat's heater level.

### Parameters

| Parameter | Example | Description                             |
| :-------- | :------ | :-------------------------------------- |
| heater    | 0       | The desired seat to set the heater for. |
| level     | 3       | The desired level to set the heater to. |

### Response

```json
{
  "reason": "",
  "result": true
}
```
