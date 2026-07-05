install_repositories() {
  install_file \
    "$SYSTEM_DIR/etc-xbps.d/hyprland-void.conf" \
    /etc/xbps.d/hyprland-void.conf \
    644

  sudo xbps-install -S
}
