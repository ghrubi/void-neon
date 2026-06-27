#!/usr/bin/env bash
set -euo pipefail

gsettings set org.gnome.desktop.interface font-name 'Inter 8'
gsettings set org.gnome.desktop.interface document-font-name 'Inter 8'
gsettings set org.gnome.desktop.interface monospace-font-name 'Inter 8'
gsettings set org.gnome.desktop.interface text-scaling-factor 0.85
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'
gsettings set org.gnome.desktop.interface cursor-size 10
