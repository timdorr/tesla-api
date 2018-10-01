These endpoints give the state of the various subsystems of the car.

## Endpoints

| Endpoint | Description |
|---|---|
| [`/api/1/vehicles/{id}/data`](state/Data.md) | A cached rollup of all the `data_request` endpoints plus vehicle configuration. |
| [`/api/1/vehicles/{id}/data_request/charge_state`](state/ChargeState.md) | Charge state of the battery and its settings. |
| [`/api/1/vehicles/{id}/data_request/climate_state`](state/ClimateState.md) | Climate control settings and internal climate state. |
| [`/api/1/vehicles/{id}/data_request/drive_state`](state/DriveState.md) | Driving-related state. |
| [`/api/1/vehicles/{id}/data_request/gui_settings`](state/GuiSettings.md) | Settings for displaying info in the mobile app. |
| [`/api/1/vehicles/{id}/data_request/vehicle_state`](state/VehicleState.md) | Overall vehicle state. |
| [`/api/1/vehicles/{id}/mobile_enabled`](state/MobileEnabled.md) | Check if mobile app access is enabled. |
