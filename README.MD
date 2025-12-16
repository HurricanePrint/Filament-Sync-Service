[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P11AL9ZR)

# Filament Sync Service
This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.

### Note to K1 users

Not working with K1 series printers at the moment. If you have experience with creating startup services on the K1 firmware please contact me. I don't own a K1 to test with.

## Installation

Download and unzip the [Latest Release](https://github.com/HurricanePrint/Filament-Sync-Service/releases/latest)

Open Fluidd in your browser ```<your.printer.ip>:4408```

On the left side select Configuration {...} 

Click the + then Upload Folder

Select the Filament-Sync-Service folder you extracted

### In Terminal/Powershell on your pc

Connect to your printer with ssh ```root@<your.printer.ip>```
password ```creality_2024```

If you are not using the k2improvement-script you will need to install entware
```
sh /mnt/UDISK/printer_data/config/Filament-Sync-Service/service/entware/install.sh
```
Install the sync service
```
sh /mnt/UDISK/printer_data/config/Filament-Sync-Service/install.sh
```
If you have the k2improvement-script installed, the path is
```
/mnt/UDISK/root/printer_data/config/Filament-Sync-Service
```

#### All done! Continue to install Filament-Sync on your pc
### [Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)

## Updating

Delete the previous folder from your printer and upload the newest version the same way you do in the Installing section. No need to run install.sh if it's already been installed previously.
