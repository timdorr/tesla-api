# Miscellaneous vehicle/vehicle related data

## GET `/api/1/vehicles/{vehicle_id}/release_notes`

Get the release notes for the current update.

{% hint style='info' %}
The App can get the next/pending update's release notes as well, but this endpoint seems to return only the current update's release notes.
{% endhint %}

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
