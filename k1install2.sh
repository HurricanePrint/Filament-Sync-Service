#! /bin/sh
servicedirectory="./service"

# Create data folder if it doesn't exist
echo "Creating data directory"
mkdir -p data

#install and enable startup service
echo "Installing and enabling service"
chmod +x ${servicedirectory}/sync.sh
systemctl enable ${servicedirectory}/filamentsync.service
systemctl start filamentsync
systemctl status filamentsync

echo "Ready to sync"
echo "Make sure the script is set in your slicers post-processing options"
echo "or in terminal run node main.js in the filament-sync directory"