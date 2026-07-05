verify() {
    local cmds=(
        hyprland
        ghostty
        waybar
        mako
        fuzzel
        yazi
        sddm
        hyprlock
        hypridle
        hardware-state
    )

    local cmd

    echo "Verifying commands..."

    for cmd in "${cmds[@]}"; do
        if command -v "$cmd" >/dev/null 2>&1; then
            echo "✓ $cmd"
        else
            echo "✗ $cmd"
        fi
    done
}
