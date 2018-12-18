# Nearby Charging Sites

## GET `/api/1/vehicles/{id}/nearby_charging_sites`

Returns a list of nearby Tesla-operated charging stations. (Requires car software version 2018.48 or higher.)

### Response

```json
{
  "response":{
    "congestion_sync_time_utc_secs":1545091987,
    "destination_charging":[
      {
        "location":{
          "lat":33.811484,
          "long":-118.138451
        },
        "name":"Long Beach Marriott",
        "type":"destination",
        "distance_miles":2.201606
      },
      {
        "location":{
          "lat":33.767198,
          "long":-118.191987
        },
        "name":"Renaissance Long Beach Hotel",
        "type":"destination",
        "distance_miles":4.071068
      },
      {
        "location":{
          "lat":33.757146,
          "long":-118.19861
        },
        "name":"Hotel Maya, a Doubletree by Hilton",
        "type":"destination",
        "distance_miles":4.843953
      },
      {
        "location":{
          "lat":33.832254,
          "long":-118.079218
        },
        "name":"The Gardens Casino",
        "type":"destination",
        "distance_miles":6.449794
      }
    ],
    "superchargers":[
      {
        "location":{
          "lat":33.934471,
          "long":-118.121217
        },
        "name":"Downey, CA - Stonewood Street",
        "type":"supercharger",
        "distance_miles":2.196721,
        "available_stalls":5,
        "total_stalls":12,
        "site_closed":false
      },
      {
        "location":{
          "lat":33.953385,
          "long":-118.112905
        },
        "name":"Downey, CA - Lakewood Boulevard",
        "type":"supercharger",
        "distance_miles":9.587273,
        "available_stalls":6,
        "total_stalls":12,
        "site_closed":false
      },
      {
        "location":{
          "lat":33.921063,
          "long":-118.330074
        },
        "name":"Hawthorne, CA",
        "type":"supercharger",
        "distance_miles":12.197322,
        "available_stalls":3,
        "total_stalls":6,
        "site_closed":false
      },
      {
        "location":{
          "lat":33.894227,
          "long":-118.367407
        },
        "name":"Redondo Beach, CA",
        "type":"supercharger",
        "distance_miles":13.125912,
        "available_stalls":3,
        "total_stalls":8,
        "site_closed":false
      }
    ],
    "timestamp":1545092157769
  }
}
```

