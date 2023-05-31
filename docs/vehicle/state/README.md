---
description: These endpoints give the state of the various subsystems of the car.
---

# Vehicle State

## A rollup of the `vehicle_data` data endpoint and its sub-categories.

Following the depraction of all `data_request` endpoints in favor of the `vehicle_data` endpoint, the app has been observed to use the `vehicle_data` endpoint in combination with the `endpoints` parameter to request the same data, which the old `data_request` sub-category endpoints would have returned.

To request the same chunks of data as you would with the old `data_request` endpoints, use the `vehicle_data` endpoint with the `endpoints` parameter like below:

```
GET /api/1/vehicles/{id}/vehicle_data?endpoints={endpoints}
```

You can also specify multiple endpoints by separating them with semi-colons.

The responses and documentation for each of these parameters are found in the following pages below:

{% page-ref page="data.md" %}
The base endpoint with all data.

{% page-ref page="chargestate.md" %}

Information on the state of charge in the battery and its various settings.

{% page-ref page="climatestate.md" %}

Information on the current internal temperature and climate control system.

{% page-ref page="closuresstate.md" %}
Currently unknown.

{% page-ref page="drivestate.md" %}

Returns the driving and position state of the vehicle.

{% page-ref page="guisettings.md" %}

Returns various information about the GUI settings of the car, such as unit format and range display.

{% page-ref page="locationstate.md" %}
Currently unknown.

{% page-ref page="vehiclestate.md" %}

Returns the vehicle's physical state, such as which doors are open.

{% page-ref page="vehicleconfig.md" %}

Returns the vehicle's configuration information including model, color, badging and wheels.

{% page-ref page="vehicledatacombo.md" %}
Returns a combination of the above endpoints and a `vehicle_data` field which contains what appears to be base64 encoded data.

## Other data/state endpoints

{% page-ref page="nearbychargingsites.md" %}

Returns a list of nearby Tesla-operated charging stations.

{% page-ref page="misc.md" %}

Other miscellaneous data
