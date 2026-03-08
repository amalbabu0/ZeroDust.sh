# 🧹 ZeroDust.sh

**ZeroDust.sh** is a lightweight Bash-based system maintenance script for **Debian-based Linux distributions**. It automates routine cleanup and update tasks with clear, color-coded terminal output, helping keep your system clean, fast, and up to date.

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


## Supported Systems

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


