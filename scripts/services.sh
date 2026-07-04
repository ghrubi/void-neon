#!/usr/bin/env bash
set -euo pipefail

enable_service_sets() {
  local set

  for set in "$@"; do
    enable_service_file "$SERVICES_DIR/${set}.txt"
  done
}

enable_service_file() {
  local file="${1:?file required}"
  local services=()

  [[ -f "$file" ]] || return 0

  read_manifest "$file" services

  [[ ${#services[@]} -gt 0 ]] || return 0

  local svc
  for svc in "${services[@]}"; do
    enable_service "$svc"
  done
}

enable_service() {
  local svc="${1:?service required}"

  [[ -d "/etc/sv/$svc" ]] || {
    echo "warning: service not found: $svc" >&2
    return 0
  }

  sudo rm -f "/var/service/$svc"
  sudo ln -s "/etc/sv/$svc" "/var/service/$svc"
}
