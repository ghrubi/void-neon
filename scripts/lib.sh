# Install files in non-user space
install_file() {
    local src="${1:?}"
    local dst="${2:?}"
    local mode="${3:-644}"

    sudo install -Dm"$mode" "$src" "$dst"
}

# Install dir/files in non-user space
install_tree() {
    local src="${1:?}"
    local dst="${2:?}"

    sudo rm -rf "$dst"
    sudo mkdir -p "$dst"
    sudo cp -a "$src"/. "$dst"/
}

read_manifest() {
    local file="${1:?manifest file required}"
    local -n result="${2:?array variable required}"

    [[ -f "$file" ]] || {
        result=()
        return 0
    }

    mapfile -t result < <(
        sed \
            -e 's/#.*$//' \
            -e 's/^[[:space:]]*//' \
            -e 's/[[:space:]]*$//' \
            "$file" |
        awk 'NF'
    )
}

manifest_exists() {
    [[ -f "${1:?}" ]]
}
