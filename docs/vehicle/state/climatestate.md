# Climate State

## GET `/api/1/vehicles/{id}/vehicle_data?endpoints=climate_state`

Information on the current internal temperature and climate control system.

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
    "climate_state": {
      "allow_cabin_overheat_protection": false,
      "battery_heater": false,
      "battery_heater_no_power": false,
      "bioweapon_mode": false,
      "cabin_overheat_protection": "Off",
      "climate_keeper_mode": "off",
      "cop_activation_temperature": "High",
      "defrost_mode": 0,
      "driver_temp_setting": 15.0,
      "fan_status": 0,
      "hvac_auto_request": "Override",
      "inside_temp": 22.0,
      "is_auto_conditioning_on": false,
      "is_climate_on": false,
      "is_front_defroster_on": false,
      "is_preconditioning": false,
      "is_rear_defroster_on": false,
      "left_temp_direction": -160,
      "max_avail_temp": 28.0,
      "min_avail_temp": 15.0,
      "outside_temp": 18.5,
      "passenger_temp_setting": 15.0,
      "remote_heater_control_enabled": false,
      "right_temp_direction": -160,
      "seat_heater_left": 0,
      "seat_heater_rear_left": 0,
      "seat_heater_rear_right": 0,
      "seat_heater_right": 0,
      "seat_heater_third_row_left": 0,
      "seat_heater_third_row_right": 0,
      "side_mirror_heaters": false,
      "steering_wheel_heater": false,
      "supports_fan_only_cabin_overheat_protection": false,
      "timestamp": 1685478078500,
      "wiper_blade_heater": false
    }
  }
}
```
