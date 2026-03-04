# Closures State

## GET `/api/1/vehicles/{id}/vehicle_data?endpoints=closures_state`

Currently unknown, as it only returns the 'top level' data.

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
    "ble_autopair_enrolled": false
  }
}
```
