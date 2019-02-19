# Climate State

## GET `/api/1/vehicles/{id}/data_request/climate_state`

Information on the current internal temperature and climate control system.

### Response

```json
{
  "response": {
    "battery_heater": false,
    "battery_heater_no_power": false,
    "driver_temp_setting": 21.6,
    "fan_status": 0,
    "inside_temp": null,
    "is_auto_conditioning_on": null,
    "is_climate_on": false,
    "is_front_defroster_on": false,
    "is_preconditioning": false,
    "is_rear_defroster_on": false,
    "left_temp_direction": null,
    "max_avail_temp": 28.0,
    "min_avail_temp": 15.0,
    "outside_temp": null,
    "passenger_temp_setting": 21.6,
    "remote_heater_control_enabled": true,
    "right_temp_direction": null,
    "seat_heater_left": 3,
    "seat_heater_rear_center": 0,
    "seat_heater_rear_left": 1,
    "seat_heater_rear_left_back": 0,
    "seat_heater_rear_right": 1,
    "seat_heater_rear_right_back": 0,
    "seat_heater_right": 2,
    "side_mirror_heaters": false,
    "smart_preconditioning": false,
    "steering_wheel_heater": false,
    "timestamp": 1543187641727,
    "wiper_blade_heater": false
  }
}
```
