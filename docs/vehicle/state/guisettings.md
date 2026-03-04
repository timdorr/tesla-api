# GUI Settings

## GET `/api/1/vehicles/{id}/vehicle_data?endpoints=gui_settings`

Returns various information about the GUI settings of the car, such as unit format and range display.

### Response

```json
{
  "response": {
    "id": 1234567890123,
    "user_id": 1234,
    "vehicle_id": 1234567890123,
    "vin": "7SA...",
    "display_name": "Nikola",
    "option_codes": null,
    "color": null,
    "access_type": "OWNER",
    "tokens": ["abc123", "abc123"],
    "state": "online",
    "in_service": false,
    "id_s": "1234567890123",
    "calendar_enabled": true,
    "api_version": 57,
    "backseat_token": null,
    "backseat_token_updated_at": null,
    "ble_autopair_enrolled": false,
    "gui_settings": {
      "gui_24_hour_time": false,
      "gui_charge_rate_units": "mi/hr",
      "gui_distance_units": "mi/hr",
      "gui_range_display": "Rated",
      "gui_temperature_units": "F",
      "show_range_units": true,
      "timestamp": 1543187561462
    }
  }
}
```
