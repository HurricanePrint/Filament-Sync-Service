#!/bin/sh

CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"

if test -f "/mnt/UDISK/root/printer_data/config/Filament-Sync-Service/service/sync.sh"; then
    SYNCDIRECTORY="/mnt/UDISK/root/printer_data/config/Filament-Sync-Service/data"
else
    SYNCDIRECTORY="/mnt/UDISK/printer_data/config/Filament-Sync-Service/data"
fi

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        rsync -a ${SYNCDIRECTORY}/ ${CREALITYDIRECTORY}
    fi
    sleep 15
done