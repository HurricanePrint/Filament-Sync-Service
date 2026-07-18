# Filament Sync Service

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P11AL9ZR)

Filament Sync Service is a background utility for Creality OS printers. It automatically restores your custom filament profiles and database elements, preventing the printer from overwriting them with factory defaults upon reboot.

---

### ⚠️ Note for K1 Users
This service is actively seeking testers for K1 series machines. Please share your feedback or open an issue on GitHub to report your results.

---

## 🚀 Installation

> [!NOTE]  
> Use these instructions for manual installation if the automated install tool encounters errors.

### Step 1: Upload via Fluidd Web Interface
1. Download and extract the [Latest Release](https://github.com/HurricanePrint/Filament-Sync-Service/releases/latest).
2. Open Fluidd in your web browser: `<your.printer.ip>:4408`.
3. Select the **Configuration** `{...}` tab from the left sidebar.
4. Click the **+** icon, then select **Upload Folder**.
5. Select and upload the extracted `Filament-Sync-Service` folder.

### Step 2: Execute the Installer via SSH
Open your terminal (macOS/Linux) or PowerShell (Windows) and connect to your printer:

```bash
ssh root@<your.printer.ip>
# Default Password: creality_2024
```

Navigate to the uploaded directory and run the installation script matching your hardware model:

```bash
cd /mnt/UDISK/printer_data/config/Filament-Sync-Service/
```

* **For K2 Series Printers:**
  ```bash
  sh install.sh
  ```

* **For K1 Series Printers:**
  ```bash
  sh install.sh k1
  ```

### Step 3: Desktop Setup
Once the printer service is active, finish the setup by installing the companion desktop software:
👉 **[Filament-Sync (Desktop Application)](https://github.com/HurricanePrint/Filament-Sync)**

---

## 🔄 Updates

### Automatic Updates
Updates are managed automatically through Moonraker. When a new version is released, an update notification will appear directly inside the Fluidd interface.

### Troubleshooting Update Visibility
If you performed a manual installation, Fluidd might not track repository updates immediately. To repair tracking:
1. Open **Fluidd Settings**.
2. Scroll to the bottom **Software Updates** section.
3. Click the **Recover** button.

### Manual Git Updates
Alternatively, fetch the latest changes manually over SSH:
```bash
cd /mnt/UDISK/printer_data/config/Filament-Sync-Service/
git pull
```
