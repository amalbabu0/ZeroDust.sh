# ZeroDust.sh

*A lightweight system maintenance script for Debian-based Linux systems*

**ZeroDust.sh** (formerly `sysrefresh.sh`) is a lightweight Bash script designed to automate routine system maintenance tasks on Debian-based Linux distributions. It performs a full system update, upgrade, and cleanup sequence — including removing unused packages, clearing caches, deleting temporary files, and rotating logs — all with clear, color-coded terminal output.

---

## Features

* Updates package lists using `apt update`
* Upgrades all installed packages using `apt upgrade`
* Removes unused dependencies with `apt autoremove` and `apt autoclean`
* Cleans APT package cache using `apt clean`
* Deletes:

  * User thumbnail cache
  * System cache files
  * Temporary files
* Rotates system logs using `journalctl --vacuum-time=1d`
* Displays success/failure status for every operation with visual feedback

---

## Prerequisites

* Ubuntu/Debian-based Linux distribution
* `apt` package manager
* Root privileges (the script uses `sudo`)
* `systemd` with `journalctl` available

---

## Installation

1. Save the script as `system-maintenance.sh`:

   ```bash
   nano system-maintenance.sh
   ```

2. Make the script executable:

   ```bash
   chmod +x system-maintenance.sh
   ```

3. Run the script:

   ```bash
   sudo ./system-maintenance.sh
   ```

---

## Desktop Shortcut (Optional)

To create a desktop launcher:

1. Create a `.desktop` file:

   ```bash
   nano ~/.local/share/applications/zerodust.desktop
   ```

2. Add the following:

   ```ini
   [Desktop Entry]
   Name=ZeroDust System Maintenance
   Exec=sudo /path/to/system-maintenance.sh
   Icon=utilities-terminal
   Type=Application
   Terminal=true
   Categories=System;
   ```

---

## Usage

Run the script manually for full maintenance:

```bash
sudo ./system-maintenance.sh
```

The script executes tasks in the following order:

```
Update → Upgrade → Autoremove → Clean → Clear Cache → Log Rotation
```

---

## Safety Notes

* ⚠ **`apt autoremove`** may remove packages that were automatically installed as dependencies. Always review the output before confirming.
* ⚠ **Cache cleanup** removes:

  * `/tmp/*`
  * `/var/cache/*`
    This is safe for most systems but should be tested on non-production environments first.
* Consider adding the following for stricter error handling:

  ```bash
  set -e
  trap "echo 'Script interrupted'" INT
  ```

---

## Automation (Cron Job)

To run ZeroDust weekly (every Sunday at 2:00 AM):

```bash
0 2 * * 0 /path/to/system-maintenance.sh
```

Edit cron jobs with:

```bash
crontab -e
```

---

## License

MIT License (or specify your preferred license)

---

If you want, I can also:

* Rename everything consistently to **ZeroDust**
* Add screenshots or badges
* Write a **man page**
* Optimize the script for servers vs desktops
