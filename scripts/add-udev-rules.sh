#!/usr/bin/env bash
set -euo pipefail

RULES_DIR=/etc/udev/rules.d

sudo mkdir -p $RULES_DIR
BACKLIGHT_RULES_FILE="$RULES_DIR/90-backlight.rules"

sudo mkdir -p "$RULES_DIR"

sudo tee "$BACKLIGHT_RULES_FILE" >/dev/null <<'EOF'
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", GROUP="video", MODE="0664"
ACTION=="add", SUBSYSTEM=="leds", KERNEL=="smc::kbd_backlight", GROUP="video", MODE="0664"
EOF

sudo udevadm control --reload-rules

# For MBA, set permissions immediately so we don't need to wait for a reboot
if [[ -e /sys/class/backlight/intel_backlight/brightness ]]; then
    sudo chgrp video /sys/class/backlight/intel_backlight/brightness
    sudo chmod g+w /sys/class/backlight/intel_backlight/brightness
fi

if [[ -e /sys/class/leds/smc::kbd_backlight/brightness ]]; then
    sudo chgrp video /sys/class/leds/smc::kbd_backlight/brightness
    sudo chmod g+w /sys/class/leds/smc::kbd_backlight/brightness
fi
