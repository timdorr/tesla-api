# Sharing

## POST `/api/1/vehicles/{id}/command/share`

Sends a location for the car to start navigation or play a video in theatre mode.

These docs take from the Android app, which sends the data in JSON form. However, a [URL-encoded](https://en.wikipedia.org/wiki/Percent-encoding) POST body will work as well. The basic format to a request looks like this:

```json
{
  "type": "share_ext_content_raw",
  "value": {
    "android.intent.extra.TEXT": "123 Main St, City, ST 12345\n\nhttps://goo.gl/maps/X"
  },
  "locale": "en-US",
  "timestamp_ms": "1539465730"
}
```

Note: This API was previously `navigation_request`, but has been updated to support video links as well.

### Parameters

| Parameter                        | Example                     | Description                                                                                                                         |
| :------------------------------- | :-------------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| type                             | share_ext_content_raw       | Must be `share_ext_content_raw`.                                                                                                    |
| locale                           | en-US                       | The locale for the navigation request. [ISO 639-1 standard language codes](https://www.andiamo.co.uk/resources/iso-language-codes/) |
| timestamp_ms                     | 1539465730                  | The current UNIX timestamp.                                                                                                         |
| value[android.intent.extra.TEXT] | 123 Main St, City, ST 12345 | The address or video URL to set as the navigation destination.                                                                      |

### Response

```json
{
  "reason": "",
  "result": true
}
```
