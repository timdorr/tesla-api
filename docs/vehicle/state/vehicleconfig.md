# Vehicle Config

## GET `/api/1/vehicles/{id}/data_request/vehicle_config`

Returns the vehicle's configuration information including model, color, badging and wheels.

### Response

```json
{
  "response": {
    "can_accept_navigation_requests": true,
    "can_actuate_trunks": true,
    "car_special_type": "base",
    "car_type": "models2",
    "charge_port_type": "US",
    "ece_restrictions": false,
    "eu_vehicle": false,
    "exterior_color": "White",
    "has_air_suspension": true,
    "has_ludicrous_mode": false,
    "motorized_charge_port": true,
    "plg": true,
    "rear_seat_heaters": 0,
    "rear_seat_type": 0,
    "rhd": false,
    "roof_color": "None",
    "seat_type": 2,
    "spoiler_type": "None",
    "sun_roof_installed": 2,
    "third_row_seats": "None",
    "timestamp": 1604977445448,
    "trim_badging": "p90d",
    "use_range_badging": false,
    "wheel_type": "AeroTurbine19"
  }
}
```
