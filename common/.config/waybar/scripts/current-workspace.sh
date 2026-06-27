#!/usr/bin/env bash

print_current() {
  id="$(hyprctl activeworkspace -j | jq -r '.id // empty')"
  [[ -n "$id" ]] && printf '{"text":"[%s]","tooltip":"Workspace %s"}\n' "$id" "$id"
#  [[ -n "$id" ]] && printf '{"text":"<span color=\"#666666\">[</span><span color=\"#00e5ff\">%s</span><span color=\"#666666\">]</span>","tooltip":"Workspace %s"}\n' "$id" "$id"
}

print_current

socat -U - "UNIX-CONNECT:${XDG_RUNTIME_DIR}/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock" |
while read -r line; do
  case "$line" in
    workspace*|focusedmon*)
      print_current
      ;;
  esac
done
