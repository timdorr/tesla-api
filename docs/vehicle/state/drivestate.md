# Drive State

## GET `/api/1/vehicles/{id}/vehicle_data?endpoints=drive_state`

Returns the driving and position state of the vehicle.

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
    "drive_state": {
      "gps_as_of": 1543187664,
      "heading": 8,
      "latitude": 33.111111,
      "longitude": -88.111111,
      "native_latitude": 33.111111,
      "native_location_supported": 1,
      "native_longitude": -88.111111,
      "native_type": "wgs",
      "power": 0,
      "shift_state": null,
      "speed": null,
      "timestamp": 1543187666472
    }
  }
}
```
