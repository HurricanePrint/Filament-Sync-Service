#! /bin/sh
servicedirectory="./service"

# Create data folder if it doesn't exist
echo "Creating data directory"
mkdir -p data

#install and enable startup service
echo "Installing and enabling service"
cp ${servicedirectory}/S56filamentsync /etc/init.d/
/usr/bin/systemctl
chmod 755 /etc/init.d/S56filamentsync
chmod +x ${servicedirectory}/sync.sh
# /etc/init.d/S56filamentsync
/etc/init.d/S56filamentsync start

echo "Ready to sync"
echo "Make sure the script is set in your slicers post-processing options"
echo "or in terminal run node main.js in the filament-sync directory"