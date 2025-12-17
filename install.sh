#! /bin/sh

#stop and remove service if previous version exists
if test -f "/etc/init.d/filamentsyncimprovement"; then
    /etc/init.d/filamentsyncimprovement disable
    /etc/init.d/filamentsyncimprovement stop
    rm /etc/init.d/filamentsyncimprovement
fi

if test -f "/etc/init.d/filamentsync"; then
    /etc/init.d/filamentsync disable
    /etc/init.d/filamentsync stop
    rm /etc/init.d/filamentsync
fi

#create data dir
mkdir -p data

#install and enable startup service
if test -f "/mnt/UDISK/root/printer_data/config/Filament-Sync-Service/service/sync.sh"; then
    SERVICEDIRECTORY="/mnt/UDISK/root/printer_data/config/Filament-Sync-Service/service"
    cp ${SERVICEDIRECTORY}/filamentsyncimprovement /etc/init.d/
    chmod +x ${SERVICEDIRECTORY}/sync.sh
    chmod +x /etc/init.d/filamentsyncimprovement
    /etc/init.d/filamentsyncimprovement enable
    /etc/init.d/filamentsyncimprovement start
else
    SERVICEDIRECTORY="/mnt/UDISK/printer_data/config/Filament-Sync-Service/service"
    cp ${SERVICEDIRECTORY}/filamentsync /etc/init.d/
    chmod +x ${SERVICEDIRECTORY}/sync.sh
    chmod +x /etc/init.d/filamentsync
    /etc/init.d/filamentsync enable
    /etc/init.d/filamentsync start
    echo "Installing SFTP"
    opkg install ${SERVICEDIRECTORY}/openssh-sftp-server_10.0_p1-1_armv7-3.2.ipk
fi

echo "Ready to sync"
echo "Make sure the script is set in your slicers post-processing options"
echo "or in terminal run 'node main.js' in the filament-sync directory"