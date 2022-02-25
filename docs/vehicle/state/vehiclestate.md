# Vehicle State

## GET `/api/1/vehicles/{id}/data_request/vehicle_state`

Returns the vehicle's physical state, such as which doors are open.

For the trunk (rt) and frunk (ft) fields, you should interpret a zero (0) value as closed and a non-zero value as open (partially or fully).

Here are the currently known values for the `center_display_state` field:

| State | Description              |
| ----- | ------------------------ |
| 0     | Off                      |
| 2     | On, standby or Camp Mode |
| 3     | On, charging screen      |
| 4     | On                       |
| 5     | On, Big charging screen  |
| 6     | On, Ready to unlock      |
| 7     | Sentry Mode              |
| 8     | Dog Mode                 |
| 9     | Media                    |

Here are the descriptions for the shorthand fields:

| Field | Description     |
| ----- | --------------- |
| df    | driver front    |
| dr    | driver rear     |
| pf    | passenger front |
| pr    | passenger rear  |
| ft    | front trunk     |
| rt    | rear trunk      |

### Response

```json
{
  "response": {
    "api_version": 10,
    "autopark_state_v2": "standby",
    "autopark_style": "standard",
    "calendar_supported": true,
    "car_version": "2020.36.16 3e9e4e8dd287",
    "center_display_state": 0,
    "df": 0,
    "dr": 0,
    "ft": 0,
    "homelink_device_count": 2,
    "homelink_nearby": true,
    "is_user_present": false,
    "last_autopark_error": "no_error",
    "locked": false,
    "media_state": { "remote_control_enabled": true },
    "notifications_supported": true,
    "odometer": 57509.856033,
    "parsed_calendar_supported": true,
    "pf": 0,
    "pr": 0,
    "remote_start": false,
    "remote_start_enabled": true,
    "remote_start_supported": true,
    "rt": 0,
    "sentry_mode": false,
    "sentry_mode_available": true,
    "smart_summon_available": true,
    "software_update": {
      "download_perc": 0,
      "expected_duration_sec": 2700,
      "install_perc": 1,
      "status": "",
      "version": ""
    },
    "speed_limit_mode": {
      "active": false,
      "current_limit_mph": 50.0,
      "max_limit_mph": 90,
      "min_limit_mph": 50,
      "pin_code_set": true
    },
    "summon_standby_mode_enabled": false,
    "sun_roof_percent_open": 0,
    "sun_roof_state": "closed",
    "timestamp": 1604977470379,
    "tpms_pressure_fl": 0.0,
    "tpms_pressure_fr": 0.0,
    "tpms_pressure_rl": 0.0,
    "tpms_pressure_rr": 0.0,
    "valet_mode": false,
    "valet_pin_needed": true,
    "vehicle_name": "Nikola 2.0"
  }
}
```
