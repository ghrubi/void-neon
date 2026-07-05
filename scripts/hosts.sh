detect_host() {
    HOST_PROFILE="${1:-${HOST_PROFILE:-}}"

    if [[ -z "$HOST_PROFILE" ]]; then
        echo "Usage: ./install.sh mba-2017|mbp-2019" >&2
        exit 2
    fi

    export HOST_PROFILE
}
