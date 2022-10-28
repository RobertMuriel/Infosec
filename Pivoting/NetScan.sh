#!/bin/bash

# Use: ./NetScan.sh 192.168.1

if [ "$1" == "" ]
then
    echo "You forgot an IP address!"
    echo "Syntax: ./NetScan.sh 192.168.1"
else
    for i in $(seq 1 254); do
      timeout 1 bash -c "ping -c1 $1.$i" &>/dev/null && echo "[+] $1.$i - ACTIVE" &
    done; wait
fi