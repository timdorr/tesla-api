# Windows

## POST `/api/1/vehicles/{id}/command/window_control`

Controls the windows. Will vent or close all windows simultaneously.

### Parameters

| Parameter | Example | Description                                                                 |
| :-------- | :------ | :-------------------------------------------------------------------------- |
| command   | close   | What action to take with the windows. Allows the values `vent` and `close`. |
| lat       | 0       | Seems to not care what this is, 0 is the only value sent by the app.        |
| lon       | 0       | Seems to not care what this is, 0 is the only value sent by the app.        |

### Response

```json
{
  "reason": "",
  "result": true
}
```
