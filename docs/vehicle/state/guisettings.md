# GUI Settings

## GET `/api/1/vehicles/{id}/data_request/gui_settings`

Returns various information about the GUI settings of the car, such as unit format and range display.

### Response

```json
{
  "response": {
    "gui_distance_units": "mi/hr",
    "gui_temperature_units": "F",
    "gui_charge_rate_units": "mi/hr",
    "gui_24_hour_time": false,
    "gui_range_display": "Rated",
    "timestamp": 1538365490671
  }
}
```

