#!/bin/sh

set -o errexit -o nounset

grace_period_seconds="$1"
grace_period_millis="$(expr "$grace_period_seconds" '*' 1000)"

notify-send --urgency=low --expire-time="$grace_period_millis" -- "Locking screen in ${grace_period_seconds} seconds"
