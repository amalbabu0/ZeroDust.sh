# ZeroDust.sh
sysrefresh.sh is a lightweight Bash script designed to automate routine system maintenance tasks on Debian-based Linux distributions. It performs a full system update, upgrade, and cleanup sequence — including removing unused packages, clearing caches, deleting temporary files, and rotating logs — all with clear, color-coded terminal output.

Ubuntu System Maintenance Script README
This Bash script automates routine Ubuntu/Debian system maintenance tasks including package updates, upgrades, cleanup, and temporary file removal with colored output for better visibility.
​

Features
Updates package lists with apt update.

Upgrades all installed packages using apt upgrade.

Removes unused dependencies via apt autoremove and apt autoclean.

Cleans APT package cache with apt clean.

Deletes user thumbnails, system cache, and temporary files.

Rotates logs using journalctl --vacuum-time=1d.
All operations include success/failure checks and visual feedback.
​

Prerequisites
Ubuntu/Debian-based system with apt package manager.

Root privileges (script uses sudo extensively).

journalctl for log rotation (systemd-based systems).
​

Installation
Save the script as system-maintenance.sh:

bash
chmod +x system-maintenance.sh
sudo ./system-maintenance.sh
For desktop shortcut, create a .desktop file in ~/.local/share/applications/ with Terminal=true.
​

Usage
Run directly for full maintenance:

bash
sudo ./system-maintenance.sh
Script executes sequentially: Update → Upgrade → Autoremove → Clean → Clear → Log.
​

Safety Notes
apt autoremove removes auto-installed dependencies no longer needed but may affect manually used packages—review output first.
​

Clear() deletes /tmp/* and /var/cache/*—safe for most cases but test on non-production systems.
​

Add set -e for strict error handling and trap for cleanup on interrupt.
​

Run weekly via cron: 0 2 * * 0 /path/to/script.sh.
​
