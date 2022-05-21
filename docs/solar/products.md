---
description: Endpoint for getting an account's solar products
---

# Products

A user may have multiple solar products under their account. This resource lists the solar products and provides the `site_id` required to identify the product in all site-specific solar APIs.


## GET `/api/1/products`

Retrieve a list of your Tesla solar products.

### Request parameters

None.

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

The value of `energy_site_id` is permanently assigned to a solar installation; you only need to obtain it once.  Insert the value in the URI for site-specific solar APIs.
