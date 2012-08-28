#!/bin/sh
width=1920
height=1200
offset=$(( ( ${width} - ${height} ) / 2 ))
readonly width height offset

xrandr \
    --output DVI-I-1 --mode ${width}x${height} --pos 0x0 --rotate left \
    --output DP-1 --mode ${width}x${height} --pos ${height}x${offset} --rotate normal
