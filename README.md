# 🧹 ZeroDust.sh

**ZeroDust.sh** is a lightweight Bash-based system maintenance script for **Debian-based Linux distributions**. It automates routine cleanup and update tasks with clear, color-coded terminal output, helping keep your system clean, fast, and up to date.

---

##  Features

*  Updates package lists (`apt update`)
*  Upgrades installed packages (`apt upgrade`)
*  Removes unused dependencies (`apt autoremove`, `apt autoclean`)
*  Cleans APT package cache (`apt clean`)
*  Clears temporary and cache files
*  Rotates system logs (keeps last 1 day)
*  Color-coded output for better readability
*  Can be launched via a desktop shortcut

---

## Supported Systems

* Ubuntu
* Debian
* Linux Mint
* Any **Debian-based** Linux distribution

---

## Files Included

* `ZeroDust.sh` – Main maintenance script
* `Up.desktop` – Desktop launcher (optional)
* `image.png` – Icon for the desktop shortcut (optional)

---

## Installation

### Clone or Download

```bash
git clone https://github.com/yourusername/ZeroDust.sh.git
cd ZeroDust.sh
```

### Make the Script Executable

```bash
chmod +x ZeroDust.sh
```

### Run the Script

```bash
./ZeroDust.sh
```

> **Note:** The script uses `sudo`, so you will be prompted for your password.

---

## Desktop Shortcut Setup (Optional)

Create a desktop entry file:

```ini
 Name : ZeroDust.desktop
```

### Enable the Shortcut

```bash
chmod +x ZeroDust.desktop
```

Move it to:

```bash
~/.local/share/applications/
```

---

## What the Script Does (Detailed)

| Task       | Description                         |
| ---------- | ----------------------------------- |
| Update     | Refreshes package lists             |
| Upgrade    | Installs latest package versions    |
| Autoremove | Removes unused dependencies         |
| Clean      | Clears APT cache                    |
| Clear      | Deletes temp files and system cache |
| Log        | Rotates logs older than 1 day       |

---

## Warnings

* Removes **all** files from:

  * `/tmp`
  * `/var/cache`
  * `~/.cache/thumbnails`
* Make sure no critical processes are using temporary files.

---

## Completion Output

At the end of execution, the script displays:

```
<hostname> - completed in <date & time>
```

---

## License

This project is released under the **MIT License**.
Feel free to modify and distribute.

---

## Contributions

Pull requests, bug reports, and feature suggestions are welcome!

---
