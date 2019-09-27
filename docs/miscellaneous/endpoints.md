# Endpoints File

This the latest contents of the ownerapi_endpoints.json file from the 3.10.0 version of the app.

```json
{
  "STATUS": {
    "TYPE": "GET",
    "URI": "status",
    "AUTH": false
  },
  "AUTHENTICATE": {
    "TYPE": "POST",
    "URI": "oauth/token",
    "AUTH": false
  },
  "REVOKE_AUTH_TOKEN": {
    "TYPE": "POST",
    "URI": "oauth/revoke",
    "AUTH": true
  },
  "PRODUCT_LIST": {
    "TYPE": "GET",
    "URI": "api/1/products",
    "AUTH": true
  },
  "VEHICLE_LIST": {
    "TYPE": "GET",
    "URI": "api/1/vehicles",
    "AUTH": true
  },
  "VEHICLE_SUMMARY": {
    "TYPE": "GET",
    "URI": "api/1/vehicles/{vehicle_id}",
    "AUTH": true
  },
  "VEHICLE_DATA_LEGACY": {
    "TYPE": "GET",
    "URI": "api/1/vehicles/{vehicle_id}/data",
    "AUTH": true
  },
  "VEHICLE_DATA": {
    "TYPE": "GET",
    "URI": "api/1/vehicles/{vehicle_id}/vehicle_data",
    "AUTH": true
  },
  "VEHICLE_SERVICE_DATA": {
    "TYPE": "GET",
    "URI": "api/1/vehicles/{vehicle_id}/service_data",
    "AUTH": true
  },
  "NEARBY_CHARGING_SITES": {
    "TYPE": "GET",
    "URI": "api/1/vehicles/{vehicle_id}/nearby_charging_sites",
    "AUTH": true
  },
  "WAKE_UP": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/wake_up",
    "AUTH": true
  },
  "UNLOCK": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/door_unlock",
    "AUTH": true
  },
  "LOCK": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/door_lock",
    "AUTH": true
  },
  "HONK_HORN": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/honk_horn",
    "AUTH": true
  },
  "FLASH_LIGHTS": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/flash_lights",
    "AUTH": true
  },
  "CLIMATE_ON": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/auto_conditioning_start",
    "AUTH": true
  },
  "CLIMATE_OFF": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/auto_conditioning_stop",
    "AUTH": true
  },
  "MAX_DEFROST": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/set_preconditioning_max",
    "AUTH": true
  },
  "CHANGE_CLIMATE_TEMPERATURE_SETTING": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/set_temps",
    "AUTH": true
  },
  "CHANGE_CHARGE_LIMIT": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/set_charge_limit",
    "AUTH": true
  },
  "CHANGE_SUNROOF_STATE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/sun_roof_control",
    "AUTH": true
  },
  "WINDOW_CONTROL": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/window_control",
    "AUTH": true
  },
  "ACTUATE_TRUNK": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/actuate_trunk",
    "AUTH": true
  },
  "REMOTE_START": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/remote_start_drive",
    "AUTH": true
  },
  "TRIGGER_HOMELINK": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/trigger_homelink",
    "AUTH": true
  },
  "CHARGE_PORT_DOOR_OPEN": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/charge_port_door_open",
    "AUTH": true
  },
  "CHARGE_PORT_DOOR_CLOSE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/charge_port_door_close",
    "AUTH": true
  },
  "START_CHARGE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/charge_start",
    "AUTH": true
  },
  "STOP_CHARGE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/charge_stop",
    "AUTH": true
  },
  "MEDIA_TOGGLE_PLAYBACK": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/media_toggle_playback",
    "AUTH": true
  },
  "MEDIA_NEXT_TRACK": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/media_next_track",
    "AUTH": true
  },
  "MEDIA_PREVIOUS_TRACK": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/media_prev_track",
    "AUTH": true
  },
  "MEDIA_NEXT_FAVORITE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/media_next_fav",
    "AUTH": true
  },
  "MEDIA_PREVIOUS_FAVORITE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/media_prev_fav",
    "AUTH": true
  },
  "MEDIA_VOLUME_UP": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/media_volume_up",
    "AUTH": true
  },
  "MEDIA_VOLUME_DOWN": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/media_volume_down",
    "AUTH": true
  },
  "SEND_LOG": {
    "TYPE": "POST",
    "URI": "api/1/logs",
    "AUTH": true
  },
  "SEND_REPORT": {
    "TYPE": "POST",
    "URI": "api/1/reports",
    "AUTH": true
  },
  "RETRIEVE_NOTIFICATION_PREFERENCES": {
    "TYPE": "GET",
    "URI": "api/1/notification_preferences",
    "AUTH": true
  },
  "SEND_NOTIFICATION_PREFERENCES": {
    "TYPE": "POST",
    "URI": "api/1/notification_preferences",
    "AUTH": true
  },
  "RETRIEVE_NOTIFICATION_SUBSCRIPTION_PREFERENCES": {
    "TYPE": "GET",
    "URI": "api/1/vehicle_subscriptions",
    "AUTH": true
  },
  "SEND_NOTIFICATION_SUBSCRIPTION_PREFERENCES": {
    "TYPE": "POST",
    "URI": "api/1/vehicle_subscriptions",
    "AUTH": true
  },
  "DEACTIVATE_DEVICE_TOKEN": {
    "TYPE": "POST",
    "URI": "api/1/device/{device_token}/deactivate",
    "AUTH": true
  },
  "CALENDAR_SYNC": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/upcoming_calendar_entries",
    "AUTH": true
  },
  "SET_VALET_MODE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/set_valet_mode",
    "AUTH": true
  },
  "RESET_VALET_PIN": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/reset_valet_pin",
    "AUTH": true
  },
  "SPEED_LIMIT_ACTIVATE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/speed_limit_activate",
    "AUTH": true
  },
  "SPEED_LIMIT_DEACTIVATE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/speed_limit_deactivate",
    "AUTH": true
  },
  "SPEED_LIMIT_SET_LIMIT": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/speed_limit_set_limit",
    "AUTH": true
  },
  "SPEED_LIMIT_CLEAR_PIN": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/speed_limit_clear_pin",
    "AUTH": true
  },
  "SCHEDULE_SOFTWARE_UPDATE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/schedule_software_update",
    "AUTH": true
  },
  "CANCEL_SOFTWARE_UPDATE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/cancel_software_update",
    "AUTH": true
  },
  "SET_SENTRY_MODE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/set_sentry_mode",
    "AUTH": true
  },
  "POWERWALL_ORDER_SESSION_DATA": {
    "TYPE": "GET",
    "URI": "api/1/users/powerwall_order_entry_data",
    "AUTH": true
  },
  "POWERWALL_ORDER_PAGE": {
    "TYPE": "GET",
    "URI": "powerwall_order_page",
    "AUTH": true,
    "CONTENT": "HTML"
  },
  "ONBOARDING_EXPERIENCE": {
    "TYPE": "GET",
    "URI": "api/1/users/onboarding_data",
    "AUTH": true
  },
  "ONBOARDING_EXPERIENCE_PAGE": {
    "TYPE": "GET",
    "URI": "onboarding_page",
    "AUTH": true,
    "CONTENT": "HTML"
  },
  "SERVICE_SELF_SCHEDULING_ELIGIBILITY": {
    "TYPE": "GET",
    "URI": "api/1/users/service_scheduling_data",
    "AUTH": true
  },
  "SERVICE_SELF_SCHEDULING_PAGE": {
    "TYPE": "GET",
    "URI": "service_scheduling_page",
    "AUTH": true,
    "CONTENT": "HTML"
  },
  "REFERRAL_DATA": {
    "TYPE": "GET",
    "URI": "api/1/users/referral_data",
    "AUTH": true
  },
  "REFERRAL_PAGE": {
    "TYPE": "GET",
    "URI": "referral_page",
    "AUTH": true,
    "CONTENT": "HTML"
  },
  "ROADSIDE_ASSISTANCE_DATA": {
    "TYPE": "GET",
    "URI": "api/1/users/roadside_assistance_data",
    "AUTH": true
  },
  "ROADSIDE_ASSISTANCE_PAGE": {
    "TYPE": "GET",
    "URI": "roadside_assistance_page",
    "AUTH": true,
    "CONTENT": "HTML"
  },
  "UPGRADE_ELIGIBILITY": {
    "TYPE": "GET",
    "URI": "api/1/vehicles/{vehicle_id}/eligible_upgrades",
    "AUTH": true
  },
  "AUTOPILOT_UPGRADE_URL": {
    "TYPE": "GET",
    "URI": "api/1/vehicles/{vehicle_id}/purchase_url",
    "AUTH": true
  },
  "MESSAGE_CENTER_MESSAGE_LIST": {
    "TYPE": "GET",
    "URI": "api/1/messages",
    "AUTH": true
  },
  "MESSAGE_CENTER_MESSAGE": {
    "TYPE": "GET",
    "URI": "api/1/messages/{message_id}",
    "AUTH": true
  },
  "MESSAGE_CENTER_COUNTS": {
    "TYPE": "GET",
    "URI": "api/1/messages/count",
    "AUTH": true
  },
  "MESSAGE_CENTER_MESSAGE_ACTION_UPDATE": {
    "TYPE": "POST",
    "URI": "api/1/messages/{message_id}/actions",
    "AUTH": true
  },
  "MESSAGE_CENTER_CTA_PAGE": {
    "TYPE": "GET",
    "URI": "messages_cta_page",
    "AUTH": true,
    "CONTENT": "HTML"
  },
  "AUTH_COMMAND_TOKEN": {
    "TYPE": "POST",
    "URI": "api/1/users/command_token",
    "AUTH": true
  },
  "SEND_DEVICE_KEY": {
    "TYPE": "POST",
    "URI": "api/1/users/keys",
    "AUTH": true
  },
  "DIAGNOSTICS_ENTITLEMENTS": {
    "TYPE": "GET",
    "URI": "api/1/diagnostics",
    "AUTH": true
  },
  "SEND_DIAGNOSTICS": {
    "TYPE": "POST",
    "URI": "api/1/diagnostics",
    "AUTH": true
  },
  "BATTERY_SUMMARY": {
    "TYPE": "GET",
    "URI": "api/1/powerwalls/{battery_id}/status",
    "AUTH": true
  },
  "BATTERY_DATA": {
    "TYPE": "GET",
    "URI": "api/1/powerwalls/{battery_id}",
    "AUTH": true
  },
  "BATTERY_POWER_TIMESERIES_DATA": {
    "TYPE": "GET",
    "URI": "api/1/powerwalls/{battery_id}/powerhistory",
    "AUTH": true
  },
  "BATTERY_ENERGY_TIMESERIES_DATA": {
    "TYPE": "GET",
    "URI": "api/1/powerwalls/{battery_id}/energyhistory",
    "AUTH": true
  },
  "BATTERY_BACKUP_RESERVE": {
    "TYPE": "POST",
    "URI": "api/1/powerwalls/{battery_id}/backup",
    "AUTH": true
  },
  "BATTERY_SITE_NAME": {
    "TYPE": "POST",
    "URI": "api/1/powerwalls/{battery_id}/site_name",
    "AUTH": true
  },
  "BATTERY_OPERATION_MODE": {
    "TYPE": "POST",
    "URI": "api/1/powerwalls/{battery_id}/operation",
    "AUTH": true
  },
  "SITE_SUMMARY": {
    "TYPE": "GET",
    "URI": "api/1/energy_sites/{site_id}/status",
    "AUTH": true
  },
  "SITE_DATA": {
    "TYPE": "GET",
    "URI": "api/1/energy_sites/{site_id}/live_status",
    "AUTH": true
  },
  "SITE_CONFIG": {
    "TYPE": "GET",
    "URI": "api/1/energy_sites/{site_id}/site_info",
    "AUTH": true
  },
  "HISTORY_DATA": {
    "TYPE": "GET",
    "URI": "api/1/energy_sites/{site_id}/history",
    "AUTH": true
  },
  "CALENDAR_HISTORY_DATA": {
    "TYPE": "GET",
    "URI": "api/1/energy_sites/{site_id}/calendar_history",
    "AUTH": true
  },
  "BACKUP_RESERVE": {
    "TYPE": "POST",
    "URI": "api/1/energy_sites/{site_id}/backup",
    "AUTH": true
  },
  "SITE_NAME": {
    "TYPE": "POST",
    "URI": "api/1/energy_sites/{site_id}/site_name",
    "AUTH": true
  },
  "OPERATION_MODE": {
    "TYPE": "POST",
    "URI": "api/1/energy_sites/{site_id}/operation",
    "AUTH": true
  },
  "TIME_OF_USE_SETTINGS": {
    "TYPE": "POST",
    "URI": "api/1/energy_sites/{site_id}/time_of_use_settings",
    "AUTH": true
  },
  "STORM_MODE_SETTINGS": {
    "TYPE": "POST",
    "URI": "api/1/energy_sites/{site_id}/storm_mode",
    "AUTH": true
  },
  "SEND_NOTIFICATION_CONFIRMATION": {
    "TYPE": "POST",
    "URI": "api/1/notification_confirmations",
    "AUTH": true
  },
  "SHARE_TO_VEHICLE": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/share",
    "AUTH": true
  },
  "REMOTE_SEAT_HEATER_REQUEST": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/remote_seat_heater_request",
    "AUTH": true
  },
  "REMOTE_STEERING_WHEEL_HEATER_REQUEST": {
    "TYPE": "POST",
    "URI": "api/1/vehicles/{vehicle_id}/command/remote_steering_wheel_heater_request",
    "AUTH": true
  }
}
```
