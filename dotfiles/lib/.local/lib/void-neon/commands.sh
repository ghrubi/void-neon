#!/usr/bin/env bash

has() {
  command -v "$1" >/dev/null 2>&1
}

require() {
  has "$1" || die "required command not found: $1"
}
