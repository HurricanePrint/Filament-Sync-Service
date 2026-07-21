#!/bin/sh

SYNCDIRECTORY="/mnt/UDISK/printer_data/config/Filament-Sync-Service/data"
if [ "$1" = "k1" ]; then
    CREALITYDIRECTORY="/usr/data/creality/userdata/box"
    else
    CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"
fi

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        rsync -a ${SYNCDIRECTORY}/ ${CREALITYDIRECTORY}
    fi
    sleep 15
done