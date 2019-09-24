#!/bin/bash

set -o xtrace

# Prepend executable if command starts with an option
if [ "${1:0:1}" = '-' ]; then
    set -- clamscan "$@"
fi

if [ "$1" = 'clamscan' ]; then
    mkdir -p /var/lib/clamav
    chown 101:103 /var/lib/clamav
    freshclam
fi

exec "$@"
