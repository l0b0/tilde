#!/usr/bin/env bash
#
# Timeout checks

set -o errexit -o noclobber -o nounset -o pipefail

sleep 5 &
wait $! && echo 'Successfully waited for process'
