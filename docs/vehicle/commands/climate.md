# Climate

Commands related to the climate control (HVAC) system.

## POST `/api/1/vehicles/{id}/command/auto_conditioning_start`

Start the climate control (HVAC) system. Will cool or heat automatically, depending on set temperature.

### Parameters

| Body Parameter  | Example  | Description                                              |
| :-------------- | :------- | :------------------------------------------------------- |
| manual_override | socdoors | Optional, to override the low_soc failure reason (<20%). |

### Example

```json
{
  "manual_override": "socdoors"
}
```

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

Note: Despite accepting two parameters, only the `driver_temp` will be used to set the target temperature, unless the "split" option is activated within the climate controls menu.

Note: The parameters are always in celsius, regardless of the region the car is in or the display settings of the car.

### Parameters

| Parameter      | Example | Description                                                 |
| :------------- | :------ | :---------------------------------------------------------- |
| driver_temp    | 23.4    | The desired temperature on the driver's side in celsius.    |
| passenger_temp | 23.4    | The desired temperature on the passenger's side in celsius. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/set_preconditioning_max`

Toggles the climate controls between Max Defrost and the previous setting.

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

## POST `/api/1/vehicles/{id}/command/remote_seat_heater_request`

Sets the specified seat's heater level.

### Parameters

| Parameter | Example | Description                             |
| :-------- | :------ | :-------------------------------------- |
| heater    | 0       | The desired seat to heat. (0-5)         |
| level     | 3       | The desired level for the heater. (0-3) |

The `heater` parameter maps to the following seats:

| Number | Seat        |
| :----- | :---------- |
| 0      | Front Left  |
| 1      | Front right |
| 2      | Rear left   |
| 4      | Rear center |
| 5      | Rear right  |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/remote_seat_cooler_request`

Sets the specified seat's cooler level. (Refresh Model S & X)

### Parameters

These parameters need to be passed via the post body as `JSON`.

| Body Parameter    | Example | Description                             |
| :---------------- | :------ | :-------------------------------------- |
| seat_position     | 0       | The desired seat to cool. (0-5)         |
| seat_cooler_level | 3       | The desired level for the cooler. (0-3) |

The `seat_position` parameter maps to the following seats:

| Number | Seat        |
| :----- | :---------- |
| 0      | Front Left  |
| 1      | Front right |
| 2      | Rear left   |
| 4      | Rear center |
| 5      | Rear right  |

### Example

```json
{
  "seat_position": 0,
  "seat_cooler_level": 3
}
```

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/remote_steering_wheel_heater_request`

Turn steering wheel heater on or off.

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

## POST `/api/1/vehicles/{id}/command/set_bioweapon_mode`

Enable or disable Bioweapon Defense Mode.

### Request

This endpoint requires json in the post body, with the singular parameter `on` which is either `true` or `false`.
This endpoint will respond with the `result` as `true` even with no parameters or body specified.

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

## POST `/api/1/vehicles/{id}/command/set_climate_keeper_mode`

Set the Climate Keeper mode.

### Request

This endpoint requires json in the post body, with the singular parameter `climate_keeper_mode` and a number as the value. Those map to the values below.

| Number | Mode         |
| :----- | :----------- |
| 0      | Off          |
| 1      | On - Default |
| 2      | Dog Mode     |
| 3      | Camp Mode    |

### Example

```json
{
  "climate_keeper_mode": 0
}
```

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{vehicle_id}/command/remote_auto_seat_climate_request`

Enables/disables Automatic Seat Climate on the specified seat.

### Parameters

These parameters need to be passed via the post body as `JSON`.

| Body Parameter     | Example | Description                              |
| :----------------- | :------ | :--------------------------------------- |
| auto_seat_position | 0       | The desired seat for auto climate. (0-5) |
| auto_climate_on    | true    | `true` to enable and `false` to disable. |

The `auto_seat_position` parameter maps to the following seats:

| Number | Seat        |
| :----- | :---------- |
| 0      | Front Left  |
| 1      | Front right |
| 2      | Rear left   |
| 4      | Rear center |
| 5      | Rear right  |

### Example

```json
{
  "auto_seat_position": 0,
  "auto_climate_on": "true"
}
```

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{vehicle_id}/command/set_cop_temp`

Sets the Cabin Overheat Protection (COP) temperature.

{% hint style='info' %}
This endpoint appears to be in progress and is not yet fully functional/disabled as of now (12-13-2022, MDY).
{% endhint %}

### Parameters

These parameters need to be passed via the post body as `JSON`.

| Body Parameter | Example | Description                                                |
| :------------- | :------ | :--------------------------------------------------------- |
| temp           | 40      | The COP temperature in Celcius (name is subject to change) |

### Example

```json
{
  "temp": "40"
}
```

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{vehicle_id}/command/set_cabin_overheat_protection`

Turns on the Cabin Overheat Protection (COP) and sets its mode.

### Parameters

These parameters need to be passed via the post body as `JSON`.

| Body Parameter | Example | Description                                    |
| :------------- | :------ | :--------------------------------------------- |
| on             | true    | Turns COP on/off.                              |
| fan_only       | true    | Use only the fans, do not use/turn on HVAC/AC. |

### Example

```json
{
  "on": true,
  "fan_only": true
}
```

### Response

```json
{
  "reason": "",
  "result": true
}
```
