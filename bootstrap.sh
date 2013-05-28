#!/usr/bin/env bash

set -o errexit -o noclobber -o nounset -o pipefail

apt-get update
apt-get install --yes bc git make shunit2
