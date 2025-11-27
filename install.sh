#! /bin/sh
servicedirectory="./service"

# Install SFTP
echo "Installing SFTP"
opkg install ${servicedirectory}/openssh-sftp-server_10.0_p1-1_armv7-3.2.ipk

# Create data folder
echo "Creating data directory"
mkdir -p data

#install and enable startup service
echo "Installing and enabling service"
cp ${servicedirectory}/filamentsync /etc/init.d/
chmod +x /etc/init.d/filamentsync
chmod +x ${servicedirectory}/sync.sh
/etc/init.d/filamentsync enable
/etc/init.d/filamentsync start

echo "Ready to sync"
echo "Make sure the script is set in your slicers post-processing options"
echo "or in terminal run 'node main.js' in the filament-sync directory"