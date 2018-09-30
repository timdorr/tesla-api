# Tesla JSON API

This is unofficial documentation of the Tesla JSON API used by their iOS and Android apps.
It features functionality to monitor and control their vehicle (Model S, Model X, and Model 3) and power (Powerwall) products.
We currently have documentation for their vehicles, but always accept [pull requests](https://github.com/timdorr/model-s-api/pulls) for improvements and additions.

The API for vehicles is organized into 3 primary surfaces:

### State and commands
Gives point-in-time data about the state of the vehicle and basic controls over certain functions of the vehicle.
The state and command APIs loosely adhere to the REST standard, but differ in some crucial ways. As a result,
you may not be able to use it with many REST tools and libraries out of the box.

### Streaming telemetry
Streams in data about the car's telemetry at up to half second increments.
The underlying protocol is simply a streaming HTTP API that provides JSON objects at regular intervals.

### Autopark ("Summon")
A streaming command mode to control the automatic parking of HW1 (Autopilot v1) and HW2/HW2.5 (Autopilot v2) cars.
This API uses a standard WebSocket that exchanges JSON objects to convey state information and issue commands during the Autopark session.
