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

  
## Site IDs

Each solar installation is identified by a numeric `site_id`, such as `2252154638651575`. The `site_id` is included in the URI for every site-specific solar API. The `site_id` is permanently assigned; you only need to obtain it once.  To find your `site_id` 



## GET `/api/1/vehicles`

Retrieve a list of your owned vehicles.

### Request parameters

### Response

```json
{
  "response": [
    {
      "id": 12345678901234567,
      "vehicle_id": 1234567890,
      "vin": "5YJSA11111111111",
      "display_name": "Nikola 2.0",
      "option_codes": "MDLS,RENA,AF02,APF1,APH2,APPB,AU01,BC0R,BP00,BR00,BS00,CDM0,CH05,PBCW,CW00,DCF0,DRLH,DSH7,DV4W,FG02,FR04,HP00,IDBA,IX01,LP01,ME02,MI01,PF01,PI01,PK00,PS01,PX00,PX4D,QTVB,RFP2,SC01,SP00,SR01,SU01,TM00,TP03,TR00,UTAB,WTAS,X001,X003,X007,X011,X013,X021,X024,X027,X028,X031,X037,X040,X044,YFFC,COUS",
      "color": null,
      "tokens": ["abcdef1234567890", "1234567890abcdef"],
      "state": "online",
      "in_service": false,
      "id_s": "12345678901234567",
      "calendar_enabled": true,
      "api_version": 7,
      "backseat_token": null,
      "backseat_token_updated_at": null
    }
  ],
  "count": 1
}
```

## GET `/api/1/vehicles/{id}`

These resources are read-only and determine the state of the vehicle's various sub-systems.

### URL parameters

| Field | Example             | Description                                  |
| :---- | :------------------ | :------------------------------------------- |
| `id`  | `12345678901234567` | The `id` of the car. (Not the `vehicle_id`!) |

### Response

```json
{
  "response": {
    "id": 12345678901234567,
    "vehicle_id": 1234567890,
    "vin": "5YJSA11111111111",
    "display_name": "Nikola 2.0",
    "option_codes": "MDLS,RENA,AF02,APF1,APH2,APPB,AU01,BC0R,BP00,BR00,BS00,CDM0,CH05,PBCW,CW00,DCF0,DRLH,DSH7,DV4W,FG02,FR04,HP00,IDBA,IX01,LP01,ME02,MI01,PF01,PI01,PK00,PS01,PX00,PX4D,QTVB,RFP2,SC01,SP00,SR01,SU01,TM00,TP03,TR00,UTAB,WTAS,X001,X003,X007,X011,X013,X021,X024,X027,X028,X031,X037,X040,X044,YFFC,COUS",
    "color": null,
    "tokens": ["abcdef1234567890", "1234567890abcdef"],
    "state": "online",
    "in_service": false,
    "id_s": "12345678901234567",
    "calendar_enabled": true,
    "api_version": 7,
    "backseat_token": null,
    "backseat_token_updated_at": null
  }
}
```
