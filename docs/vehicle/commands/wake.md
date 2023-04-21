# Wake

## POST `/api/1/vehicles/{id}/wake_up`

Wakes up the car from a sleeping state.

The API will return a response immediately, however it could take several seconds before the car is actually online and ready to receive other commands.
One way to deal with this is to call this endpoint in a loop until the returned state says "online", with a timeout to give up. In some cases, the wake up can be slow, so consider using a timeout of atleast 30 seconds.

### Response

```json
{
  "response": {
    "id": 12345678901234567,
    "user_id": 12345,
    "vehicle_id": 1234567890,
    "vin": "5YJSA11111111111",
    "display_name": "Nikola 2.0",
    "color": null,
    "tokens": ["abcdef1234567890", "1234567890abcdef"],
    "state": "online",
    "in_service": false,
    "id_s": "12345678901234567",
    "calendar_enabled": true,
    "api_version": 7,
    "backseat_token": null,
    "backseat_token_updated_at": null
  }
}
```
