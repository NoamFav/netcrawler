#!/usr/bin/env bash

# -- dirs
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MODULES_DIR="$SCRIPT_DIR/modules"

# -- main menu
main_menu() {
    clear
    echo "================================"
    echo "         NETCRAWLER             "
    echo "================================"
    echo " 1) Stress Test (DDoS)"
    echo " 2) Network Scan"
    echo " 3) ARP Poison"
    echo " 4) WiFi Attacks"
    echo " 5) Audit Report"
    echo " q) Quit"
    echo "================================"
    read -rp "Choose: " choice

    case $choice in
    1) source "$MODULES_DIR/stress.sh" ;;
    2) source "$MODULES_DIR/scan.sh" ;;
    3) source "$MODULES_DIR/arp.sh" ;;
    4) source "$MODULES_DIR/wifi.sh" ;;
    5) source "$MODULES_DIR/audit.sh" ;;
    q) exit 0 ;;
    *) main_menu ;;
    esac
}

main_menu
