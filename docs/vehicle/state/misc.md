# Miscellaneous Vehicle Data

## GET `/api/1/vehicles/{vehicle_id}/release_notes`

Get the current software version or upcoming software update's release notes.

### Parameters

| Parameter | Example | Description                                                                                                     |
| :-------- | :------ | :-------------------------------------------------------------------------------------------------------------- |
| staged    | true    | If there is currently a pending software update, this will return the upcoming software update's release notes. |

### Response

```json
{
  "response": {
    "release_notes": [
      {
        "title": "Feature 1",
        "subtitle": "A bit more info",
        "description": "What changed?",
        "customer_version": "2022.40",
        "image_url": "https://vehicle-files.teslamotors.com/release_notes/{id}?__gda__=exp={unix_timestamp}~acl=/release_notes/{id}~hmac={id}"
      }
    ],
    "deployed_version": "2022.40.4.2",
    "staged_version": null
  }
}
```
