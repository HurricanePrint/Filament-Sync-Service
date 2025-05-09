

# Filament Sync Service
This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P11AL9ZR)

## Dependencies 

For K2 printers: [k2-improvements](https://github.com/jamincollins/k2-improvements)

For K1 printers: [Creality-Helper-Script](https://guilouz.github.io/Creality-Helper-Script-Wiki/helper-script/helper-script-installation/)

## Installation

In Terminal

```
git clone https://github.com/HurricanePrint/Filament-Sync-Service.git
```

```
cd Filament-Sync-Service
```

For K2 users

```
sh install.sh
```

For K1 users

```
sh k1install.sh
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

For K2
```
sh install.sh
```

For K1

```
sh k1install.sh
```

#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)

