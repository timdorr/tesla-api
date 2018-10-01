Information on the state of charge in the battery and its various settings.

## GET `/api/1/vehicles/{id}/data_request/charge_state`

### Response

```json
{
  "response": {
    "charging_state": "Complete",
    "fast_charger_type": "<invalid>",
    "fast_charger_brand": "<invalid>",
    "charge_limit_soc": 90,
    "charge_limit_soc_std": 90,
    "charge_limit_soc_min": 50,
    "charge_limit_soc_max": 100,
    "charge_to_max_range": false,
    "max_range_charge_counter": 0,
    "fast_charger_present": null,
    "battery_range": 232.27,
    "est_battery_range": 215.07,
    "ideal_battery_range": 290.34,
    "battery_level": 90,
    "usable_battery_level": 90,
    "charge_energy_added": 17.9,
    "charge_miles_added_rated": 57.5,
    "charge_miles_added_ideal": 72.0,
    "charger_voltage": null,
    "charger_pilot_current": null,
    "charger_actual_current": null,
    "charger_power": null,
    "time_to_full_charge": 0.0,
    "trip_charging": null,
    "charge_rate": 0.0,
    "charge_port_door_open": null,
    "conn_charge_cable": "<invalid>",
    "scheduled_charging_start_time": null,
    "scheduled_charging_pending": false,
    "user_charge_enable_request": null,
    "charge_enable_request": true,
    "charger_phases": null,
    "charge_port_latch": "<invalid>",
    "charge_current_request": 40,
    "charge_current_request_max": 40,
    "managed_charging_active": false,
    "managed_charging_user_canceled": false,
    "managed_charging_start_time": null,
    "battery_heater_on": false,
    "not_enough_power_to_heat": null,
    "timestamp": 1538365158106
  }
}
```
