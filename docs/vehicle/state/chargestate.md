# Charge State

## GET `/api/1/vehicles/{id}/data_request/charge_state`

Information on the state of charge in the battery and its various settings.

### Response

```json
{
  "response": {
    "battery_heater_on": false,
    "battery_level": 64,
    "battery_range": 167.96,
    "charge_current_request": 48,
    "charge_current_request_max": 48,
    "charge_enable_request": true,
    "charge_energy_added": 12.41,
    "charge_limit_soc": 90,
    "charge_limit_soc_max": 100,
    "charge_limit_soc_min": 50,
    "charge_limit_soc_std": 90,
    "charge_miles_added_ideal": 50.0,
    "charge_miles_added_rated": 40.0,
    "charge_port_door_open": false,
    "charge_port_latch": "Engaged",
    "charge_rate": 0.0,
    "charge_to_max_range": false,
    "charger_actual_current": 0,
    "charger_phases": null,
    "charger_pilot_current": 48,
    "charger_power": 0,
    "charger_voltage": 0,
    "charging_state": "Disconnected",
    "conn_charge_cable": "<invalid>",
    "est_battery_range": 116.67,
    "fast_charger_brand": "<invalid>",
    "fast_charger_present": false,
    "fast_charger_type": "<invalid>",
    "ideal_battery_range": 209.95,
    "managed_charging_active": false,
    "managed_charging_start_time": null,
    "managed_charging_user_canceled": false,
    "max_range_charge_counter": 0,
    "not_enough_power_to_heat": false,
    "scheduled_charging_pending": false,
    "scheduled_charging_start_time": null,
    "time_to_full_charge": 0.0,
    "timestamp": 1543187621530,
    "trip_charging": false,
    "usable_battery_level": 64,
    "user_charge_enable_request": null
  }
}
```
