install_package_sets() {
  local set
  for set in "$@"; do
    install_package_file "$PACKAGES_DIR/${set}.txt"
  done
}

install_package_file_original() {
  local file="${1:?file required}"
  local packages=()

  [[ -f "$file" ]] || return 0

  read_manifest "$file" packages

  [[ ${#packages[@]} -gt 0 ]] || return 0

  sudo xbps-install -Sy "${packages[@]}"
}

install_package_file() {
    local file="${1:?file required}"
    local packages=()
    local missing=()
    local pkg

    read_manifest "$file" packages

    [[ ${#packages[@]} -gt 0 ]] || return 0

    for pkg in "${packages[@]}"; do
        if xbps-query "$pkg" >/dev/null 2>&1; then
            echo "already installed: $pkg"
        else
            missing+=("$pkg")
        fi
    done

    [[ ${#missing[@]} -gt 0 ]] || return 0

    sudo xbps-install -Sy "${missing[@]}"
}

