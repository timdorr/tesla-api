# Drive State

## GET `/api/1/vehicles/{id}/data_request/drive_state`

Returns the driving and position state of the vehicle.

### Response

```javascript
{
  "response": {
    "shift_state": null,
    "speed": null,
    "power": 0,
    "latitude": 33.111111,
    "longitude": -88.111111,
    "heading": 5,
    "gps_as_of": 1538365363,
    "native_location_supported": 1,
    "native_latitude": 33.111111,
    "native_longitude": -88.111111,
    "native_type": "wgs",
    "timestamp": 1538365436098
  }
}
```

