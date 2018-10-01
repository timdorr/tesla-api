Returns the vehicle's physical state, such as which doors are open.

## GET `/api/1/vehicles/{id}/data_request/vehicle_state`

### Response

```json
{
  "response": {
    "api_version": 3,
    "autopark_state_v2": "standby",
    "autopark_style": "standard",
    "calendar_supported": true,
    "car_version": "2018.34.1 3dd3072",
    "center_display_state": 0,
    "df": 0,
    "dr": 0,
    "ft": 0,
    "homelink_nearby": true,
    "last_autopark_error": "no_error",
    "locked": true,
    "notifications_supported": true,
    "odometer": 33561.422505,
    "parsed_calendar_supported": true,
    "pf": 0,
    "pr": 0,
    "remote_start": false,
    "remote_start_supported": true,
    "rt": 0,
    "speed_limit_mode": {
      "active": false,
      "current_limit_mph": 75.0,
      "max_limit_mph": 90,
      "min_limit_mph": 50,
      "pin_code_set": false
    },
    "sun_roof_percent_open": 0,
    "sun_roof_state": "unknown",
    "timestamp": 1538365559247,
    "valet_mode": false,
    "vehicle_name": "Nikola 2.0"
  }
}
```
