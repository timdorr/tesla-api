# Drive State

{% hint style='warning' %}
This endpoint was deprecated and returns 404.
{% endhint %}

## GET `/api/1/vehicles/{id}/data_request/drive_state`

Returns the driving and position state of the vehicle.

### Response

```json
{
  "response": {
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
```
