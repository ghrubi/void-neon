#!/usr/bin/env bash
set -euo pipefail

for svc in seatd bluetoothd; do
  sudo rm -f "/var/service/$svc"
  sudo ln -s "/etc/sv/$svc" "/var/service/$svc"
done
