#!/usr/bin/env bash
set -euo pipefail

install_package_sets() {
  local set
  for set in "$@"; do
    install_package_file "$PACKAGES_DIR/${set}.txt"
  done
}

install_package_file() {
  local file="${1:?file required}"
  local packages=()

  [[ -f "$file" ]] || return 0

  read_manifest "$file" packages

  [[ ${#packages[@]} -gt 0 ]] || return 0

  sudo xbps-install -S --needed "${packages[@]}""
}

