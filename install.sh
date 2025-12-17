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
