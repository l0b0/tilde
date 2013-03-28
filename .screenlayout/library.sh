# All info
monitor_info=`xrandr --query`

# Connected monitor names
monitors=`echo "$monitor_info" | grep --only-matching '^\w\+ connected' | cut --delimiter ' ' --field 1`

# Monitors and resolutions
unset monitor_resolutions monitor_count
while read monitor
do
    monitor_resolutions="${monitor_resolutions:+${monitor_resolutions}
}$monitor `echo "$monitor_info" | grep -A 1 "$monitor" | tail -1 | cut --delimiter ' ' --field 4 | tr 'x' ' '`"
    monitor_count="$((monitor_count+1))"
done <<EOF
$monitors
EOF

unset monitor_info monitors
