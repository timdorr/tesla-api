---
description: Solar API Overview
---

# Solar API Endpoints

The base URI for all site-specific solar APIs is `https://owner-api.teslamotors.com/api/1/energy_sites/{site_id}/` followed by the endpoint name and parameters. The endpoints fall into three groups:

### Solar energy generation data endpoints

| Cmd | Endpoint            | Description                                    |
| :-- | :------------------ | :--------------------------------------------- |
| GET | `history`           | Current and immediately prior generation data. |
| GET | `calendar_history`  | Generation data from a past period.            |
| GET | `telemetry_history` | No information available.                      |

The solar generation APIs are described in more detail in the `history.md` document.

### Solar state endpoints

| Cmd | Endpoint                | 
| :-- | :---------------------- | 
| GET | `live_status`           | 
| GET | `site_info`             | 
| GET | `tariff_rate`           |
| GET | `tariff_rates`          |
| GET | `savings_forecast`      |
| GET | `backup_time_remaining` |
| GET | `programs`              |

The solar state APIs are not yet documented.

### Solar command endpoints

| Cmd  | Endpoint                            | 
| :--- | :---------------------------------- | 
| POST | `backup`                            | 
| POST | `off_grid_vehicle_charging_reserve` | 
| POST | `site_name`                         |
| POST | `operation`                         |
| POST | `grid_import_export`                |
| POST | `time_of_use_settings`              |
| POST | `storm_mode`                        |
| POST | `command`                           |
| POST | `program`                           |
| POST | `event`                             |
| POST | `preference`                        |

The solar command APIs are not yet documented.

# Authentication

Solar APIs use the same authentication method and the same `access_token` as the vehicle APIs.  All solar GET and POST requests require a header field named `authorization` with the value `Bearer {access_token}`. See the `authentication.md` document in the `api-basics` folder for details.

# Site ID

Each solar installation is identified by a numeric `site_id`, such as `2252154638651575`. The `site_id` is included in the URI for every site-specific solar API. The `site_id` is permanently assigned to your installation; you only need to obtain it once.  To find your `site_id`, get your list of Tesla products with the following request:

## GET `https://owner-api.teslamotors.com/api/1/products`

Retrieve a list of your Tesla products.

### Request parameters

None.

### Response

```json
{
  "response": [
    {
      "energy_site_id": 2252111638651575,
      "resource_type": "solar",
      "id": "313dbc37-555c-45b1-83aa-62a4ef9ff7ac",
      "asset_site_id": "47d04752-9cf1-4e76-88fb-08839a1c41c4",
      "solar_power": 2320,
      "solar_type": "pv_panel",
      "sync_grid_alert_enabled": false,
      "breaker_alert_enabled": false,
      "components":
        {
          "battery": false,
          "solar": true,
          "solar_type": "pv_panel",
          "grid": true,
          "load_meter": false,
          "market_type": "residential"
        }
      }
    ],
  "count": 1
}
```

In the response list, look for an entry containing the field `energy_site_id` and record the corresponding numeric value.  Include the value in the base URI for site-specific solar requests.
