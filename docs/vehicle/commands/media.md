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
