#!/usr/bin/env bash
set -euo pipefail

install_system_files() {
  install_file \
    "$SYSTEM_DIR/usr-local-bin/void-neon-power-event" \
    /usr/local/bin/void-neon-power-event \
    755

  sudo mkdir -p /usr/share/sddm/themes/void-neon
  install_tree \
      "$SYSTEM_DIR/usr-share-sddm-themes/void-neon" \
      /usr/share/sddm/themes/void-neon

  install_file \
    "$WALLPAPERS_DIR/void-logo-wallpaper.png" \
    /usr/share/sddm/themes/void-neon/background.png

  sudo mkdir -p /etc/sddm.conf.d
  install_file \
    "$SYSTEM_DIR/etc-sddm.conf.d/10-void-neon.conf" \
    /etc/sddm.conf.d/10-void-neon.conf

  install_file \
    "$SYSTEM_DIR/etc-polkit-1-rules.d/49-void-neon-power-profiles.rules" \
    /etc/polkit-1/rules.d/49-void-neon-power-profiles.rules

  "$SYSTEM_DIR/add-udev-rules.sh"
}

# sudo install -Dm755 ~/void-neon/system/usr-local-bin/void-neon-power-event \
#   /usr/local/bin/void-neon-power-event
# sudo cp -r ~/void-neon/scripts/usr-local-bin/void-neon-power-event \
#   /usr/local/bin/void-neon-power-event
#
# sudo chown -R root:root /usr/local/bin/void-neon-power-event
# sudo chmod -R a+rX /usr/local/bin/void-neon-power-event

# sudo mkdir -p /usr/share/sddm/themes/void-neon
# sudo cp -r ~/void-neon/system/usr-share-sddm-themes/void-neon/* \
#   /usr/share/sddm/themes/void-neon/
#
# sudo chown -R root:root /usr/share/sddm/themes/void-neon
# sudo chmod -R a+rX /usr/share/sddm/themes/void-neon

# sudo cp ~/void-neon/wallpapers/void-logo-wallpaper.png \
#   /usr/share/sddm/themes/void-neon/background.png
#
# sudo chown root:root /usr/share/sddm/themes/void-neon/background.png
# sudo chmod 644 /usr/share/sddm/themes/void-neon/background.png

# sudo mkdir -p /etc/sddm.conf.d
# sudo cp ~/void-neon/system/etc-sddm.conf.d/10-void-neon.conf \
#   /etc/sddm.conf.d/10-void-neon.conf
#
# sudo chown root:root /etc/sddm.conf.d/10-void-neon.conf
# sudo chmod 644 /etc/sddm.conf.d/10-void-neon.conf

install_power_profile_polkit_rule() {
    # local user="${VOID_NEON_USER:-${SUDO_USER:-$USER}}"
    local dst="/etc/polkit-1/rules.d/49-void-neon-power-profiles.rules"

    sudo install -d -m 755 /etc/polkit-1/rules.d

    sudo tee "$dst" >/dev/null <<EOF
polkit.addRule(function(action, subject) {
    if (
        action.id == "org.freedesktop.UPower.PowerProfiles.switch-profile" &&
        subject.user == "$user"
    ) {
        return polkit.Result.YES;
    }
});
EOF

    sudo chmod 644 "$dst"
}
