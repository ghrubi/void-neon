preflight() {
    command -v xbps-install >/dev/null 2>&1 || {
        echo "This installer must be run on Void Linux." >&2
        exit 1
    }

    command -v sudo >/dev/null 2>&1 || {
        echo "sudo is required." >&2
        exit 1
    }

    sudo -v
}

