# Homelink

## POST `/api/1/vehicles/{id}/command/trigger_homelink`

Opens or closes the primary Homelink device. The provided location must be in proximity of stored location of the Homelink device.

### Parameters

| Parameter | Example            | Description        |
| :-------- | :----------------- | :----------------- |
| lat       | 36.98765432109876  | Current latitude.  |
| lon       | -77.12345678901234 | Current longitude. |

### Response

```json
{
  "reason": "",
  "result": true
}
```
