# Vehicle State

## GET `/api/1/vehicles/{id}/data_request/vehicle_state`

Returns the vehicle's physical state, such as which doors are open.

### Response

```json
{
  "response": {
    "api_version": 6,
    "autopark_state_v2": "ready",
    "autopark_style": "standard",
    "calendar_supported": true,
    "car_version": "2018.42.2 19e7e44",
    "center_display_state": 0,
    "df": 0,
    "dr": 0,
    "ft": 0,
    "homelink_nearby": true,
    "is_user_present": false,
    "last_autopark_error": "no_error",
    "locked": true,
    "media_state": { "remote_control_enabled": true },
    "notifications_supported": true,
    "odometer": 36051.517239,
    "parsed_calendar_supported": true,
    "pf": 0,
    "pr": 0,
    "remote_start": false,
    "remote_start_enabled": true,
    "remote_start_supported": true,
    "rt": 0,
    "sentry_mode": true,
    "software_update": { "expected_duration_sec": 2700, "status": "" },
    "speed_limit_mode": {
      "active": false,
      "current_limit_mph": 50.0,
      "max_limit_mph": 90,
      "min_limit_mph": 50,
      "pin_code_set": false
    },
    "sun_roof_percent_open": 0,
    "sun_roof_state": "unknown",
    "timestamp": 1543187581934,
    "valet_mode": false,
    "valet_pin_needed": true,
    "vehicle_name": "Nikola 2.0"
  }
}
```

### Center Display States
| State | Description     |
|-------|-----------------|
| 0     | Off             |
| 2     | Normal On       |
| 3     | Charging Screen |
| 7     | Sentry Mode     |
| 8     | Dog Mode        |

### Trunk (rt)
| State | Description |
|-------|-------------|
| 0     | Closed      |
| 32    | Open        |

### Frunk (ft)
| State | Description |
|-------|-------------|
| 0     | Closed      |
| 16    | Open        |
