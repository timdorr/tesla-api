# Climate State

## GET `/api/1/vehicles/{id}/data_request/climate_state`

Information on the current internal temperature and climate control system.

### Response

```json
{
  "response": {
    "battery_heater": false,
    "battery_heater_no_power": false,
    "climate_keeper_mode": "off",
    "defrost_mode": 0,
    "driver_temp_setting": 22.8,
    "fan_status": 0,
    "inside_temp": 27.0,
    "is_auto_conditioning_on": false,
    "is_climate_on": false,
    "is_front_defroster_on": false,
    "is_preconditioning": false,
    "is_rear_defroster_on": false,
    "left_temp_direction": -232,
    "max_avail_temp": 28.0,
    "min_avail_temp": 15.0,
    "outside_temp": 23.0,
    "passenger_temp_setting": 22.8,
    "remote_heater_control_enabled": false,
    "right_temp_direction": -232,
    "seat_heater_left": 0,
    "seat_heater_right": 0,
    "side_mirror_heaters": false,
    "timestamp": 1604977244530,
    "wiper_blade_heater": false
  }
}
```
