---
description: Endpoints for getting an account's energy products
---

# Products

A logged in user may have multiple Tesla Energy products (Powerwalls, Solar installations, etc.) under their account (congrats on being rich!).

## GET `/api/1/products`

Retrieve a list of your Tesla Energy products.

The value of `energy_site_id` is used as `site_id` in the various energy product endpoints.

### Request parameters

### Response

```json
{
  "response": [
    {
      "energy_site_id": 2252147638651575,
      "resource_type": "solar",
      "id": "313dbc37-555c-45b1-83aa-62a4ef9ff7ac",
      "asset_site_id": "47d04752-9cf1-4e76-88fb-08839a1c41c4",
      "solar_power": 2320,
      "solar_type": "pv_panel",
      "sync_grid_alert_enabled": false,
      "breaker_alert_enabled": false,
      "components": {
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
