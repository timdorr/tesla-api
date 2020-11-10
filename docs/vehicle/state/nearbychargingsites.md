# Nearby Charging Sites

## GET `/api/1/vehicles/{id}/nearby_charging_sites`

Returns a list of nearby Tesla-operated charging stations. (Requires car software version 2018.48 or higher.)

### Response

```json
{
  "response": {
    "congestion_sync_time_utc_secs": 1604976488,
    "destination_charging": [
      {
        "location": { "lat": 34.010854, "long": -84.574979 },
        "name": "Hilton Garden Inn Atlanta NW/Kennesaw Town Center",
        "type": "destination",
        "distance_miles": 6.430447
      },
      {
        "location": { "lat": 34.011213, "long": -84.575745 },
        "name": "Homewood Suites by Hilton Atlanta NW-Kennesaw",
        "type": "destination",
        "distance_miles": 6.48008
      },
      {
        "location": { "lat": 33.881785, "long": -84.473461 },
        "name": "Hyatt Place Atlanta/Cobb Galleria",
        "type": "destination",
        "distance_miles": 6.778101
      },
      {
        "location": { "lat": 33.991767, "long": -84.351229 },
        "name": "European Collision Repair",
        "type": "destination",
        "distance_miles": 6.805893
      }
    ],
    "superchargers": [
      {
        "location": { "lat": 33.848756, "long": -84.36434 },
        "name": "Atlanta, GA - Peachtree Road",
        "type": "supercharger",
        "distance_miles": 10.868304,
        "available_stalls": 4,
        "total_stalls": 5,
        "site_closed": false
      },
      {
        "location": { "lat": 33.846487, "long": -84.360172 },
        "name": "Atlanta, GA - Lenox Road",
        "type": "supercharger",
        "distance_miles": 11.131691,
        "available_stalls": 16,
        "total_stalls": 16,
        "site_closed": false
      },
      {
        "location": { "lat": 34.075818, "long": -84.652184 },
        "name": "Acworth, GA",
        "type": "supercharger",
        "distance_miles": 12.403464,
        "available_stalls": 11,
        "total_stalls": 11,
        "site_closed": false
      },
      {
        "location": { "lat": 34.071365, "long": -84.275362 },
        "name": "Alpharetta, GA",
        "type": "supercharger",
        "distance_miles": 12.772961,
        "available_stalls": 6,
        "total_stalls": 10,
        "site_closed": false
      }
    ],
    "timestamp": 1604977312943
  }
}
```
