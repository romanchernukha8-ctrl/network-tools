#!/bin/bash

# This script lists all active network interfaces
# and displays their IPv4 addresses.

echo "Active network interfaces:"
echo

count=0

# Read interface name, state and address
while read -r iface state addr; do

    # Skip localhost interface
    if [[ "$iface" == "lo" ]]; then
        continue
    fi

    # Interface must be UP (LOWER_UP state)
    if ! ip link show "$iface" | grep -q LOWER_UP; then
        continue
    fi

    # Only process IPv4 addresses
    if [[ "$addr" != *.* ]]; then
        continue
    fi

    # Extract IP without subnet mask
    ip_address=${addr%%/*}

    echo "Interface: $iface"
    echo "IP: $ip_address"
    echo

    ((count++))

done < <(ip -br -4 addr)

echo "Total active interfaces: $count"

