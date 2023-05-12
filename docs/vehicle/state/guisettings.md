# GUI Settings

{% hint style='warning' %}
This endpoint was deprecated and returns 404.
{% endhint %}

## GET `/api/1/vehicles/{id}/data_request/gui_settings`

Returns various information about the GUI settings of the car, such as unit format and range display.

### Response

```json
{
  "response": {
    "gui_24_hour_time": false,
    "gui_charge_rate_units": "mi/hr",
    "gui_distance_units": "mi/hr",
    "gui_range_display": "Rated",
    "gui_temperature_units": "F",
    "show_range_units": true,
    "timestamp": 1543187561462
  }
}
```
