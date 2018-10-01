# Climate State

## GET `/api/1/vehicles/{id}/data_request/climate_state`

Information on the current internal temperature and climate control system.

### Response

```json
{
  "response": {
    "inside_temp": 30.1,
    "outside_temp": null,
    "driver_temp_setting": 22.2,
    "passenger_temp_setting": 22.2,
    "left_temp_direction": null,
    "right_temp_direction": null,
    "is_front_defroster_on": false,
    "is_rear_defroster_on": false,
    "fan_status": 0,
    "is_climate_on": false,
    "min_avail_temp": 15.0,
    "max_avail_temp": 28.0,
    "seat_heater_left": false,
    "seat_heater_right": false,
    "seat_heater_rear_left": false,
    "seat_heater_rear_right": false,
    "seat_heater_rear_center": false,
    "seat_heater_rear_right_back": 0,
    "seat_heater_rear_left_back": 0,
    "battery_heater": false,
    "battery_heater_no_power": null,
    "steering_wheel_heater": false,
    "wiper_blade_heater": false,
    "side_mirror_heaters": false,
    "is_preconditioning": false,
    "smart_preconditioning": false,
    "is_auto_conditioning_on": null,
    "timestamp": 1538365286085
  }
}
```

