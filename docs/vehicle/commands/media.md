# Media

Controls the currently playing media in the car. For these commands to work, the car must be on.

## POST `/api/1/vehicles/{id}/command/media_toggle_playback`

Toggles the media between playing and paused. For the radio, this mutes or unmutes the audio.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/media_next_track`

Skips to the next track in the current playlist.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/media_prev_track`

Skips to the previous track in the current playlist. Does nothing for streaming from Stitcher.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/media_next_fav`

Skips to the next saved favorite in the media system.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/media_prev_fav`

Skips to the previous saved favorite in the media system.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/media_volume_up`

Turns up the volume of the media system.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/media_volume_down`

Turns down the volume of the media system.

### Response

```json
{
  "reason": "",
  "result": true
}
```

## POST `/api/1/vehicles/{id}/command/adjust_volume`

Adjusts the volume of the media system to the desired volume.

### Parameters

This endpoint needs a single `volume` parameter passed inside of the POST body, and will tell you if it's missing.

> Note: the endpoint accepts both a string and a numerical value for the volume parameter. It is also currently not present as a feature inside of the Tesla App despite working.

| Parameter | Example | Description                         |
| :-------- | :------ | :---------------------------------- |
| volume    | 1       | Numerical value or string from 0-11 |

```json
{
  "volume": "1"
}
```

```json
{
  "volume": 1
}
```

### Response

```json
{
  "reason": "",
  "result": true
}
```
