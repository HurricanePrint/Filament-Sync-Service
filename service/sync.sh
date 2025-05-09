#!/bin/sh

if [ "$1" == "k1" ]; then
    CREALITYDIRECTORY="/usr/data/creality/userdata/box/"
    SYNCDIRECTORY="/root/Filament-Sync-Service/data" 
else
    CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"
    SYNCDIRECTORY="/mnt/UDISK/root/Filament-Sync-Service/data" 
fi

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        rsync -a ${SYNCDIRECTORY}/ ${CREALITYDIRECTORY}
    fi
    sleep 15
done