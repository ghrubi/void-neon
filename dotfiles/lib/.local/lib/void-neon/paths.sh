#!/usr/bin/env bash

void_neon_root() {
  local dir
  dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
  printf '%s\n' "$dir"
}

void_neon_bin_dir() {
  printf '%s/.local/bin\n' "$HOME"
}

void_neon_config_dir() {
  printf '%s/.config\n' "$HOME"
}
