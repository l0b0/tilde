#!/usr/bin/env bash

# Use this in user crons to notify of failures

env_reference_process="$(/usr/bin/pgrep -u "$USER" awesome)"
export "$(/usr/bin/grep -z ^DBUS_SESSION_BUS_ADDRESS= /proc/"$env_reference_process"/environ | /usr/bin/tr -d '\0')"
export "$(/usr/bin/grep -z ^DISPLAY= /proc/"$env_reference_process"/environ | /usr/bin/tr -d '\0')"
"$@" || /usr/bin/notify-send --app-name="$0" --urgency=critical "Command failed: $(printf '%q ' "$@")"
