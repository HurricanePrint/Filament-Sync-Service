#!/bin/sh

CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"
SYNCDIRECTORY="/usr/share/Filament-Sync"

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        rsync -a ${SYNCDIRECTORY}/ ${CREALITYDIRECTORY}
    fi
    sleep 15
done