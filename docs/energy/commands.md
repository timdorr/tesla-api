# Energy Commands

These endpoints are not yet documented.

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

## POST `api/1/energy_sites/{site_id}/backup`

Set the battery backup reserve energy percentage for grid outages.

### Parameters

| Parameter              | Example | Description                        |
| :--------------------- | :------ | :--------------------------------- |
| backup_reserve_percent | 75      | The percentage for backup reserve. |

### Response

```json
{
  "response": {
    "code": 201,
    "message": "Updated"
  }
}
```

## POST `api/1/energy_sites/{site_id}/site_name`

Set your energy site name.

### Parameters

| Parameter | Example      | Description           |
| :-------- | :----------- | :-------------------- |
| site_name | Wardenclyffe | New energy site name. |

### Response

```json
{
  "response": {
    "code": 201,
    "message": "Updated"
  }
}
```
