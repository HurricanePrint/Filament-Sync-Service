

# Filament Sync Service
This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.

### Note to K1 users

Not working with K1 series printers at the moment. If you have experience with creating startup services on the K1 firmware please contact me. I don't own a K1 to test with.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P11AL9ZR)

## Dependencies 

For K2 printers: [k2-improvements](https://github.com/jamincollins/k2-improvements)

## Installation

In Terminal

```
git clone https://github.com/HurricanePrint/Filament-Sync-Service.git
```

```
cd Filament-Sync-Service
```

```
sh install.sh
```

#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)

## Updating

Connect with ssh

```
cd Filament-Sync-Service
```

```
git fetch --all
```

```
git reset --hard origin/main 
```

```
sh install.sh
```


#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)
