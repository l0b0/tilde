#!/bin/sh
. "`dirname -- "$0"`/library.sh"
expected_monitors=2
if [ "${monitor_count:-0}" -ne "$expected_monitors" ]
then
    echo "$0: Expected ${expected_monitors} monitors; found ${monitor_count:-0}." >&2
    exit 1
fi

monitor1=`echo "$monitor_resolutions" | head -1`
monitor2=`echo "$monitor_resolutions" | tail -1`

read monitor1_name monitor1_width monitor1_height <<EOF
$monitor1
EOF

read monitor2_name monitor2_width monitor2_height <<EOF
$monitor2
EOF

offset=$(( ( ${monitor1_width} - ${monitor2_height} ) / 2 ))

xrandr \
    --output "$monitor1_name" \
        --mode ${monitor1_width}x${monitor1_height} \
        --pos 0x0 \
        --rotate left \
    --output "$monitor2_name" \
        --mode ${monitor2_width}x${monitor2_height} \
        --pos ${monitor1_height}x${offset} \
        --rotate normal
