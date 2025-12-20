#! /bin/sh
SERVICEDIRECTORY="./service"

#stop and remove service if previous version exists
if test -f "/etc/init.d/filamentsync"; then
    echo "Removing previous version"
    /etc/init.d/filamentsync disable
    /etc/init.d/filamentsync stop
    rm /etc/init.d/filamentsync
fi

#create data dir
mkdir -p /usr/share/Filament-Sync

#install and enable startup service
if test -f "/opt/lib/sftp-server"; then
    echo "SFTP already installed"
else
    echo "Installing SFTP"
    opkg install ${SERVICEDIRECTORY}/openssh-sftp-server_10.0_p1-1_armv7-3.2.ipk
fi

cp ${SERVICEDIRECTORY}/filamentsync /etc/init.d/
chmod +x ${SERVICEDIRECTORY}/sync.sh
chmod +x /etc/init.d/filamentsync
/etc/init.d/filamentsync enable
/etc/init.d/filamentsync start
echo "Service is" `/etc/init.d/filamentsync status`

#add to moonraker to handle updates 
[ ! -d .git ] && [ -d git ] && mv git .git
SERVICEFILE="/mnt/UDISK/printer_data/moonraker.asvc"
SERVICELINE="filamentsync"

grep -qxF 'filamentsync' ~/printer_data/moonraker.asvc || { sed -i '$a\' ~/printer_data/moonraker.asvc; echo "filamentsync" >> ~/printer_data/moonraker.asvc; }

CONFFILE="/mnt/UDISK/printer_data/config/moonraker.conf"
CONFBLOCK="[update_manager filamentsync]"

if ! grep -qF "$CONFBLOCK" "$CONFFILE"; then
    cat <<EOF >> "$CONFFILE"

[update_manager filamentsync]
type: git_repo
path: /mnt/UDISK/printer_data/config/Filament-Sync-Service
origin: https://github.com/HurricanePrint/Filament-Sync-Service.git
primary_branch: main
managed_services: filamentsync
EOF
    echo "Block added to $CONFFILE."
else
    echo "Configuration already exists in $CONFFILE. No changes made."
fi
systemctl restart moonraker