#!/usr/bin/env bash
set -euo pipefail

sudo mkdir -p /usr/share/sddm/themes/void-neon
sudo cp -r ~/void-neon/scripts/usr-share-sddm-themes/void-neon/* \
  /usr/share/sddm/themes/void-neon/

sudo chown -R root:root /usr/share/sddm/themes/void-neon
sudo chmod -R a+rX /usr/share/sddm/themes/void-neon

sudo cp ~/void-neon/wallpapers/void-logo-wallpaper.png \
  /usr/share/sddm/themes/void-neon/background.png

sudo chown root:root /usr/share/sddm/themes/void-neon/background.png
sudo chmod 644 /usr/share/sddm/themes/void-neon/background.png

sudo mkdir -p /etc/sddm.conf.d
sudo cp ~/void-neon/scripts/etc-sddm.conf.d/10-void-neon.conf \
  /etc/sddm.conf.d/10-void-neon.conf

sudo chown root:root /etc/sddm.conf.d/10-void-neon.conf
sudo chmod 644 /etc/sddm.conf.d/10-void-neon.conf
