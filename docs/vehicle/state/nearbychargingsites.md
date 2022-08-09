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

## POST `https://akamai-apigateway-charging-ownership.tesla.com/graphql`

Returns a list of the ten closest Tesla-operated charging stations to the given coordinates.

### Headers

This endpoint requires a few additional headers to work. (Values are pulled from the Tesla iOS App)

| Header             | Value                                                                       | Example                                 | Description                                                                                                                                                                                                                           |
| :----------------- | :-------------------------------------------------------------------------- | :-------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| x-tesla-user-agent | TeslaApp/{app-version}/{app-extra}/ios/{ios-version}                        | TeslaApp/4.11.1/12ad93c62a/ios/16.0     | This is the tesla app's user-agent for iOS. It is composed of the version number, the version extra, and the iOS version. You can find `app-version` and `app-extra` inside of the Tesla App at the bottom of the settings page.      |
| User-Agent         | Tesla/{app-version-extra} CFNetwork/1388 Darwin/{ios-darwin-kernel-version} | Tesla/1195 CFNetwork/1388 Darwin/22.0.0 | This is the `User-Agent` it is composed of the `app-version-extra` which can be found at the bottom of the Tesla App next to the app version number, and the darwin kernel version, corresponding to the ios version specified above. |
| Content-Type       | application/json                                                            | application/json                        | Always `application/json`.                                                                                                                                                                                                            |

> Don't forget to pass your Bearer Access Token, in the `Authorization` header as well.

### Parameters

| Parameter      | Example                | Description                                                                                                                                                                                                         |
| :------------- | :--------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| deviceLanguage | en                     | The device's language. This is not relevant and can be left as `en`.                                                                                                                                                |
| deviceCountry  | US                     | The device's country/region. Match this to your [country code](https://www.iban.com/country-codes).                                                                                                                 |
| ttpLocale      | en_US                  | This is the http locale/language. This locale is in the UTF-8 format, you can find a list [here](https://docs.moodle.org/dev/Table_of_locales). You can leave it as `en_US` or match it to your preferred language. |
| vin            | 5YJ/7SA                | Your vehicles full vin number.                                                                                                                                                                                      |
| operationName  | GetNearbyChargingSites | This is the operation name/what you want the api to do, for this request, it will always be `GetNearbyChargingSites`                                                                                                |

### Body

```json
{
  "query": "\n    query GetNearbyChargingSites($args: GetNearbyChargingSitesRequestType!) {\n  charging {\n    nearbySites(args: $args) {\n      sitesAndDistances {\n        ...ChargingNearbySitesFragment\n      }\n    }\n  }\n}\n    \n    fragment ChargingNearbySitesFragment on ChargerSiteAndDistanceType {\n  activeOutages {\n    message\n  }\n  availableStalls {\n    value\n  }\n  centroid {\n    ...EnergySvcCoordinateTypeFields\n  }\n  drivingDistanceMiles {\n    value\n  }\n  entryPoint {\n    ...EnergySvcCoordinateTypeFields\n  }\n  haversineDistanceMiles {\n    value\n  }\n  id {\n    text\n  }\n  localizedSiteName {\n    value\n  }\n  maxPowerKw {\n    value\n  }\n  totalStalls {\n    value\n  }\n  siteType\n  accessType\n}\n    \n    fragment EnergySvcCoordinateTypeFields on EnergySvcCoordinateType {\n  latitude\n  longitude\n}\n    ",
  "variables": {
    "args": {
      "userLocation": {
        "latitude": 12345.67,
        "longitude": -12345.67
      },
      "northwestCorner": {
        "latitude": 12345.67,
        "longitude": -12345.67
      },
      "southeastCorner": {
        "latitude": 12345.67,
        "longitude": -12345.67
      },
      "openToNonTeslasFilter": {
        "value": false
      },
      "languageCode": "Referr to 'deviceLanguage' in the parameters above.",
      "countryCode": "Referr to 'deviceCountry' in the parameters above.",
      "vin": "5YJ/7SA"
    }
  },
  "operationName": "GetNearbyChargingSites"
}
```

### Response

> Note: Response is estimated, due to the API returning `null` for me.

```json
{
  "data": {
    "charging": [
      {
        "available_stalls": 37,
        "distance_miles": 11.48318,
        "location": {
          "lat": 12345.67,
          "long": 12345.67
        },
        "name": "Mars, Supercharger",
        "site_closed": false,
        "total_stalls": 40,
        "type": "supercharger"
      },
      {
        "available_stalls": 9,
        "distance_miles": 16.54368,
        "location": {
          "lat": 12345.67,
          "long": 12345.67
        },
        "name": "Mars, Small Supercharger",
        "site_closed": false,
        "total_stalls": 10,
        "type": "supercharger"
      }
    ]
  }
}
```
