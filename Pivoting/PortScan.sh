#!/bin/bash

# Use: ./PortScan.sh 192.168.0.1

if [ "$1" == "" ]
then
    echo "You forgot an IP address!"
    echo "Syntax: ./NetScan.sh 192.168.0.1"
else
    for port in $(seq 1 65535); do
      timeout 1 bash -c "echo '' > /dev/tcp/$1/$port" &>/dev/null && echo "[+] $1 : $port - ACTIVE" &
    done; wait
fi