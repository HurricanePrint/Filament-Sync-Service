#!/bin/sh

SYNCDIRECTORY="/mnt/UDISK/root/Filament-Sync-Service/data" 

if [ "$1" == "k1" ]; then
    CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"
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