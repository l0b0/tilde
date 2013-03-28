#!/bin/sh
eval `\`dirname -- "$0"\`/monitor_resolutions.sh`
expected_monitors=2
if [ "${monitor_count:-0}" -ne "$expected_monitors" ]
then
    echo "$0: Expected ${expected_monitors} monitors; found ${monitor_count:-0}." >&2
    exit 1
fi

xrandr \
    --output "$monitor1_name" \
        --mode ${monitor1_width}x${monitor1_height} \
        --rotate normal \
    --output "$monitor2_name" \
        --mode ${monitor2_width}x${monitor2_height} \
        --right-of "$monitor1_name" \
        --rotate normal
