#!/usr/bin/env bash
set -euo pipefail

file=/usr/share/pithos/pithos/plugins/dbus_util/DBusServiceObject.py

if [[ -f "$file" ]] && grep -q 'inspect.getargspec' "$file"; then
  sudo cp "$file" "$file.bak"
  sudo sed -i 's/inspect\.getargspec/inspect.getfullargspec/g' "$file"
fi
