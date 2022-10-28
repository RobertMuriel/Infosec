#!/bin/bash

for i in $(seq 1 254); do
  timeout 1 bash -c "ping -c1 10.10.0.$i" &>/dev/null && echo "[+] HOST 10.10.0.$i - ACTIVE" &
done; wait