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

Install the sync service
```
cd /mnt/UDISK/printer_data/config/Filament-Sync-Service/
```
```
sh /install.sh
```


#### All done! Continue to install Filament-Sync on your pc
### [Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)

## Updating

Moonraker now handles checking for and downloading updates. If there is an update there will be a notification in Fluidd.