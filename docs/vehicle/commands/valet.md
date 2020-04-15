# Valet Mode

Valet Mode limits the car's top speed to 70MPH and 80kW of acceleration power. It also disables Homelink, Bluetooth and
Wifi settings, and the ability to disable mobile access to the car. It also hides your favorites, home, and work
locations in navigation.

Note: the `password` parameter isn't required to turn on or off Valet Mode, even with a previous PIN set, but if you use the API to clear the PIN and then turn on Valet ModeI without providing a PIN, it will still activate Valet Mode. However, when you try to deactivate Valet Mode from the car's screen, you won't be able to enter a valid PIN because you cleared it from the API, so to disable Valet Mode, you have to either:

1. Sign into your Tesla account from the car's screen

    or

2. Use the app to turn off Valet Mode

    or

3. Use the API to turn off Valet Mode and then clear the Valet Mode PIN, turn on Valet Mode with the new PIN, turn off Valet Mode to set a new PIN.

## POST `/api/1/vehicles/{id}/command/set_valet_mode`

Activates or deactivates Valet Mode.

### Parameters

| Parameter | Example | Description                                                                           |
| :-------- | :------ | :------------------------------------------------------------------------------------ |
| on        | true    | true to activate, false to deactivate. Please see note about the `password` parameter.|
| password  | 1234    | A PIN to deactivate Valet Mode. Please see note about the `password` parameter.       |

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/reset_valet_pin`

Clears the currently set PIN for Valet Mode when deactivated. A new PIN will be required when activating again. Please see the note above regarding the PIN and resetting the PIN.

### Response

```json
{
  "reason": "",
  "result": true
}
```
