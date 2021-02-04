# Valet Mode

Valet Mode limits the car's top speed to 70MPH and 80kW of acceleration power. It also disables Homelink, Bluetooth and
Wifi settings, and the ability to disable mobile access to the car. It also hides your favorites, home, and work
locations in navigation.

Note: the `password` parameter isn't required to turn on or off Valet Mode, even with a previous PIN set. If you clear the PIN and activate Valet Mode without the parameter, you will only be able to deactivate it from your car's screen by signing into your Tesla account.

## POST `/api/1/vehicles/{id}/command/set_valet_mode`

Activates or deactivates Valet Mode.

### Parameters

| Parameter | Example | Description                                                                     |
| :-------- | :------ | :------------------------------------------------------------------------------ |
| on        | true    | true to activate, false to deactivate.                                          |
| password  | 1234    | A PIN to deactivate Valet Mode. Please see note about the `password` parameter. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/reset_valet_pin`

Clears the currently set PIN for Valet Mode when deactivated. A new PIN will be required when activating from the car screen. See the note above about activating via the API without a PIN set.

### Response

```json
{
  "reason": "",
  "result": true
}
```
