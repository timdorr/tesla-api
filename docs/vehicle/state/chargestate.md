# Charge State

## GET `/api/1/vehicles/{id}/vehicle_data?endpoints=charge_state`

Information on the state of charge in the battery and its various settings.

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
    "charge_state": {
      "battery_heater_on": false,
      "battery_level": 44,
      "battery_range": 141.56,
      "charge_amps": 24,
      "charge_current_request": 24,
      "charge_current_request_max": 24,
      "charge_enable_request": true,
      "charge_energy_added": 35.49,
      "charge_limit_soc": 100,
      "charge_limit_soc_max": 100,
      "charge_limit_soc_min": 50,
      "charge_limit_soc_std": 90,
      "charge_miles_added_ideal": 102.0,
      "charge_miles_added_rated": 127.5,
      "charge_port_cold_weather_mode": null,
      "charge_port_color": "Off",
      "charge_port_door_open": false,
      "charge_port_latch": "Blocking",
      "charge_rate": 0.0,
      "charger_actual_current": 0,
      "charger_phases": null,
      "charger_pilot_current": 24,
      "charger_power": 0,
      "charger_voltage": 0,
      "charging_state": "Disconnected",
      "conn_charge_cable": "<invalid>",
      "est_battery_range": 69.59,
      "fast_charger_brand": "<invalid>",
      "fast_charger_present": false,
      "fast_charger_type": "<invalid>",
      "ideal_battery_range": 113.38,
      "max_range_charge_counter": 1,
      "minutes_to_full_charge": 0,
      "not_enough_power_to_heat": false,
      "off_peak_charging_enabled": false,
      "off_peak_charging_times": "all_week",
      "off_peak_hours_end_time": 360,
      "preconditioning_enabled": false,
      "preconditioning_times": "weekdays",
      "scheduled_charging_mode": "Off",
      "scheduled_charging_pending": false,
      "scheduled_charging_start_time": null,
      "scheduled_charging_start_time_app": 0,
      "scheduled_departure_time": 1671166800,
      "scheduled_departure_time_minutes": 360,
      "supercharger_session_trip_planner": false,
      "time_to_full_charge": 0.0,
      "timestamp": 1685477952460,
      "trip_charging": false,
      "usable_battery_level": 44,
      "user_charge_enable_request": null
    }
  }
}
```
