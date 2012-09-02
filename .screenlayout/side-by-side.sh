#!/bin/sh
width=1920
height=1200
readonly width height

xrandr \
    --output DVI-0 --mode ${width}x${height} \
    --output DVI-1 --mode ${width}x${height} --right-of DVI-0
