post_install() {
    "$SCRIPTS_DIR/apply-gsettings.sh" || true
    "$SCRIPTS_DIR/change-shell.sh" || true
    "$SCRIPTS_DIR/user/git.sh"

    # Give user's group permissions so keys work
    #sudo chgrp video /sys/class/leds/smc::kbd_backlight/brightness
    sudo usermod -aG input "$USER"
}
