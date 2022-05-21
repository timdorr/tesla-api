---
description: Solar API Overview
---

# Solar API Endpoints

The base URI for all site-specific solar APIs is `https://owner-api.teslamotors.com/api/1/energy_sites/{site_id}/` followed by the endpoint name and parameters. `site_id` identifies the solar installation.  See the [products.md](products.md) file for obtaining the `site_id` value.

The solar endpoints fall into three groups:

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
