---
title: Vehicle
---

A logged in user can have multiple vehicles under their account. This resource is primarily responsible for listing the vehicles and the basic details about them.

## Vehicle Collection [/api/1/vehicles]

### List all Vehicles [GET]
Retrieve a list of your owned vehicles (includes vehicles not yet shipped!)

+ Request
    + Headers

            Authorization: Bearer {access_token}

+ Response 200 (application/json)

    + Body

            {
              "response": [{
                "color": null,
                "display_name": null,
                "id": 321,
                "option_codes": "MS01,RENA,TM00,DRLH,PF00,BT85,PBCW,RFPO,WT19,IBMB,IDPB,TR00,SU01,SC01,TP01,AU01,CH00,HP00,PA00,PS00,AD02,X020,X025,X001,X003,X007,X011,X013",
                "user_id": 123,
                "vehicle_id": 1234567890,
                "vin": "5YJSA1CN5CFP01657",
                "tokens": ["x", "x"],
                "state": "online"
              }],
              "count":1
            }


### Get Vehicle [/api/1/vehicles/{vehicle_id}]
These resources are read-only and determine the state of the vehicle's various sub-systems.

+ Parameters

    + vehicle_id: `1` (number) - The id of the Vehicle.