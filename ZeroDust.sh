#!/bin/bash
GREEN='\033[1;38;5;10m'
NC='\033[0m'
RED='\033[1;31m'
BLUE='\033[1;34m'

divider(){
    echo "--------------------------------------------------"
}

header(){
    echo -e "${BLUE}$1${NC}"
    divider
}

Update(){
    divider
    header "UPDATE"
    echo "Updating package lists"
    if sudo apt update -y; then
        echo -e "${GREEN}System updated successfully${NC}"
    else
        echo -e "${RED}Update failed!${NC}"
    fi
    divider
}

Upgrade(){
    header "UPGRADE" 
    echo "Upgrading installed packages"
    if sudo apt upgrade -y; then
        echo -e "${GREEN}System upgraded successfully${NC}"
    else
        echo -e "${RED}Upgrade failed!${NC}"
    fi
    divider
}

Autoremove(){
    header "AUTOREMOVE"
    echo "Removing unnecessary packages"
    if sudo apt autoclean && sudo apt autoremove -y; then
        echo -e "${GREEN}Unused packages removed${NC}"
    else
        echo -e "${RED}Autoremove failed!${NC}"
    fi
    divider
}

Clean(){
    header "CACHE CLEAN"
    echo "Cleaning package cache"
    if sudo apt clean; then
        echo -e "${GREEN}Package cache cleaned${NC}"
    else
        echo -e "${RED}Cache clean failed!${NC}"
    fi
    divider
}

Clear(){
    header "TEMP FILES CLEANUP"
    echo "Clearing thumbnail cache"
    rm -rf ~/.cache/thumbnails/*
    echo "Clearing system cache"
    sudo rm -rf /var/cache/*
    echo "Clearing temporary files"
    sudo rm -rf /tmp/*
    echo -e "${GREEN}Temporary files removed${NC}"
    divider
}

Log(){ 
    header "LOG ROTATION"
    echo "Rotating system logs"
    if sudo journalctl --vacuum-time=1d; then
        echo -e "${GREEN}Logs rotated${NC}"
    else
        echo -e "${RED}Log rotation failed!${NC}"
    fi
    divider
}
Update
Upgrade
Autoremove
Clean
Clear
Log

    echo -e "${RED}"$(hostname) - completed in $(date +"%a %b %X")"${NC}"
    divider
