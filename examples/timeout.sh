#!/usr/bin/env bash
#
# Timeout checks

set -o errexit -o noclobber -o nounset -o pipefail

{ sleep 5; false; } &
if wait $!
then
    false # The subshell (and therefore wait) should return 1
fi
