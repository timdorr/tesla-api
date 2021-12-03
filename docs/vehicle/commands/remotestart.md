# Remote Start

## POST `/api/1/vehicles/{id}/command/remote_start_drive`

Enables keyless driving. There is a two minute window after issuing the command to start driving the car.

### Response

```json
{
  "reason": "",
  "result": true
}
```
