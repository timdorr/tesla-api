# Frunk/Trunk

## POST `/api/1/vehicles/{id}/command/actuate_trunk`

Opens either the front or rear trunk. On the Model S and X, it will also close the rear trunk.

### Parameters

| Parameter | Example | Description |
| :--- | :--- | :--- |
| which_trunk | rear | Which trunk to open/close. `rear` and `front` are the only options. |

### Response

```json
{
  "reason": "",
  "result": true
}
```

