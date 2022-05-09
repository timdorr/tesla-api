## Info: These endpoints currently return `not_supported` as a response, due to not being implemented / enabled yet.

--------

# Take Drive Note

## POST `/api/1/vehicles/{id}/command/take_drivenote`

Take a drive note. (This feature might be related to the FSD beta bug reporting system.)

### Request

This endpoint requires a singular parameter `note`, inside the POST body with the value being anything you want to note.

### Example 

```json
{
    "note" : "42"
}
```


### Response

```json
{
  "result": true,
  "reason": ""
}
```

<br/>

# Set Vehicle Name

## POST `/api/1/vehicles/{id}/command/set_vehicle_name`

Set your vehicles name.

This endpoint requires a singular parameter `vehicle_name`, inside of the POST body, with any given name as a value.

### Example

```json
{
    "vehicle_name" : "Nikola"
}

### Response

```json
{
  "result": true,
  "reason": ""
}
```
