#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

target_branch="$1"
source_branch="$(git rev-parse --abbrev-ref HEAD)"

IFS='@:/' read -r username host user repository < <(git config --get remote.origin.url | sed 's/\.git$//')

if [[ "$host" =~ gitlab ]]
then
    url="https://${host}/${user}/${repository}/merge_requests/new?merge_request%5Bsource_branch%5D=${source_branch}&merge_request%5Btarget_branch%5D=${target_branch}"
else
    echo "Can't determine host type for '$host'" >&2
    exit 64
fi

xdg-open "$url"
