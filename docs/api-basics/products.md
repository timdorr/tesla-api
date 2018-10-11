
---
description: Endpoints for getting an account's products (Powerwalls only?)
---

# Products

A logged in user can have multiple products (energy sites?) under their account. This resource is primarily responsible for listing the products and the basic details about them.

#### `battery_id` vs `site_id`

`battery_id` refers to data of battery pack, while `site_id` refers to the whole site data.
Both ids are available requesting the `/api/1/products` endpoint.

## GET `/api/1/products`

Retrieve a list of your owned products.

### Request parameters

### Response

```json
{
  "response": [
    {
      "energy_site_id": 0000000,
      "resource_type": "battery",
      "site_name": "Site name as string",
      "gateway_id": "0000000-00-X--T00D0000000",
      "energy_left": 11536.842105263157,
      "total_pack_energy": 13480,
      "percentage_charged": 85.58488208652193,
      "battery_type": "ac_powerwall",
      "backup_capable": false,
      "battery_power": 1360,
      "sync_grid_alert_enabled": false,
      "id": "STEYYYYMMDD-00000"
    }
  ],
  "count": 1
}
```
