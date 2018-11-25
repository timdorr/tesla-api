# Sunroof

## POST `/api/1/vehicles/{id}/command/sun_roof_control`

Controls the panoramic sunroof on the Model S.

Note: There were state options for `open` (100%), `comfort` (~80%), and `move` (combined with a `percent` parameter), but they have since been disabled server side. It is unknown if they will return at a later time.

### Parameters

| Parameter | Example | Description                                                                               |
| :-------- | :------ | :---------------------------------------------------------------------------------------- |
| state     | vent    | The amount to open the sunroof. Currently this only allows the values `vent` and `close`. |

### Response

```json
{
  "reason": "",
  "result": true
}
```
