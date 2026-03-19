#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

get_router_ip() {
    netstat -nr | awk '/default/{print $2}' | head -1
}

stress_menu() {
    clear
    ROUTER=$(get_router_ip)
    echo "================================"
    echo "         STRESS TEST            "
    echo " Router: $ROUTER"
    echo "================================"
    echo " 1) SYN Flood"
    echo " 2) UDP Flood"
    echo " 3) ICMP Flood (ping)"
    echo " 4) Custom target"
    echo " b) Back"
    echo "================================"
    read -rp "Choose: " choice

    case $choice in
    1) syn_flood "$ROUTER" ;;
    2) udp_flood "$ROUTER" ;;
    3) icmp_flood "$ROUTER" ;;
    4) custom "$ROUTER" ;;
    b) source "$SCRIPT_DIR/netcrawler.sh" ;;
    q) exit 0 ;;
    *) stress_menu ;;
    esac
}

syn_flood() {
    local target=$1
    sudo hping3 -S --flood -p 80 "$target"
}

stress_menu
