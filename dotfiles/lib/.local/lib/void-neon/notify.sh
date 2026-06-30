#!/usr/bin/env bash

notify_neon() {
  local title="${1:-Void Neon}"
  local body="${2:-}"

  if command -v notify-send >/dev/null 2>&1; then
    notify-send "$title" "$body"
  fi
}
