#!/usr/bin/env bash

log() {
  printf '[void-neon] %s\n' "$*"
}

warn() {
  printf '[void-neon] warning: %s\n' "$*" >&2
}

die() {
  printf '[void-neon] error: %s\n' "$*" >&2
  exit 1
}
