# Homelink

## POST `/api/1/vehicles/{id}/command/trigger_homelink`

Send commands to primary Homelink device. Requires current location to be provided and that location must be in proximity of defined location of Homelink device.

### Parameters

| Parameter | Example            | Description                                                                     |
| :-------- | :----------------- | :------------------------------------------------------------------------------ |
| lat       | 36.98765432109876  | Current lattitude.                                                              |
| lon       | -77.12345678901234 | Current longitude.                                                              |

### Response

```json
{
  "reason": "",
  "result": true
}
```
