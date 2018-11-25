# Valet Mode

Valet Mode limits the car's top speed to 70MPH and 80kW of acceleration power. It also disables Homelink, Bluetooth and
Wifi settings, and the ability to disable mobile access to the car. It also hides your favorites, home, and work
locations in navigation.

## POST `/api/1/vehicles/{id}/command/set_valet_mode`

Activates or deactivates Valet Mode.

### Parameters

| Parameter | Example | Description                                                                       |
| :-------- | :------ | :-------------------------------------------------------------------------------- |
| on        | true    | true to activate, false to deactivate. Must include previous PIN if deactivating. |
| password  | 1234    | A PIN to deactivate Valet Mode. Can be blank if activating with a previous PIN.   |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/reset_valet_pin`

Clears the currently set PIN for Valet Mode when deactivated. A new PIN will be required when activating again.

### Response

```json
{
  "reason": "",
  "result": true
}
```
