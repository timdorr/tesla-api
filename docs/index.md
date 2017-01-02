---
title: Home
---

# Tesla JSON API

This is unofficial documentation of the Tesla JSON API used by the iOS and Android apps.
It features functionality to monitor and control the Model S and Model X remotely.

There are API is organized into 3 parts:

### State and command APIs
Gives point-in-time data about the state of the car and basic controls over certain functions of the vehicle.
The state and command APIs loosely adhere to the REST standard, but differ in some crucial ways. As a result,
you will not be able to use it with many REST tools and libraries out of the box.

### Streaming telemetry
Streams in data about the car's telemetry at up to half second increments.
The underlying protocol is simply a streaming HTTP API that provides JSON objects at regular intervals.

### Autopark ("Summon")
A streaming command mode to control the automatic parking of HW1 (Autopilot v1) and eventually HW2 (Autopilot v2) cars.
This API uses a standard WebSocket that exchanges JSON objects to convey state information and issue commands during the Autopark session.

---

**Next: [Authentication](/authentication)**
