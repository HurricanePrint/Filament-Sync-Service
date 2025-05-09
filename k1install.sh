#! /bin/sh
servicedirectory="./service"
crealitydirectory="/mnt/UDISK/creality/userdata/box"

# Create data folder if it doesn't exist
echo "Creating data directory"
mkdir -p data

#install and enable startup service
echo "Installing and enabling service"
cp ${servicedirectory}/filamentsync.service /etc/systemd/system/
chmod +x ${servicedirectory}/sync.sh
systemctl enable filamentsync.service
systemctl start filamentsync.service

echo "Ready to sync"
echo "Make sure the script is set in your slicers post-processing options"
echo "or in terminal run node main.js in the filament-sync directory"