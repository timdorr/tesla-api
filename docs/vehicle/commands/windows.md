# Windows

## POST `/api/1/vehicles/{id}/command/window_control`

Controls the windows. Will vent or close all windows simultaneously.

`lat` and `lon` values must be near the current location of the car for
`close` operation to succeed. For `vent`, the `lat` and `lon` values are
ignored, and may both be `0` (which has been observed from the app itself).

### Parameters

| Parameter | Example | Description                                                                 |
| :-------- | :------ | :-------------------------------------------------------------------------- |
| command   | close   | What action to take with the windows. Allows the values `vent` and `close`. |
| lat       | 0       | Your current latitude. See Notes above.                                     |
| lon       | 0       | Your current longitude. See Notes above.                                    |

### Response

```json
{
  "reason": "",
  "result": true
}
```
