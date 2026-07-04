#!/usr/bin/env bash

set -euo pipefail

if ! git config --global user.name >/dev/null; then
    read -rp "Git name: " name
    git config --global user.name "$name"
fi

if ! git config --global user.email >/dev/null; then
    read -rp "Git email: " email
    git config --global user.email "$email"
fi

git config --global init.defaultBranch main

git config --global pull.rebase false

git config --global core.editor nvim

git config --global core.autocrlf input

git config --global fetch.prune true

git config --global rerere.enabled true

git config --global push.autoSetupRemote true
