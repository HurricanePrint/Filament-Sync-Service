#!/bin/sh

SYNCDIRECTORY="/mnt/UDISK/printer_data/config/Filament-Sync-Service/data" 
CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        rsync -a ${SYNCDIRECTORY}/ ${CREALITYDIRECTORY}
    fi
    sleep 15
done