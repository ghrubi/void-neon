#!/usr/bin/env bash
set -euo pipefail

sudo install -Dm755 ~/void-neon/scripts/usr-local-bin/void-neon-power-event \
  /usr/local/bin/void-neon-power-event
# sudo cp -r ~/void-neon/scripts/usr-local-bin/void-neon-power-event \
#   /usr/local/bin/void-neon-power-event
#
# sudo chown -R root:root /usr/local/bin/void-neon-power-event
# sudo chmod -R a+rX /usr/local/bin/void-neon-power-event

