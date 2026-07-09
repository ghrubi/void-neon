install_dotfiles() {
  command -v stow >/dev/null 2>&1 || {
      echo "stow is required. Install packages/base.txt first." >&2
      exit 1
  }

  cd "$DOTFILES_DIR"

  stow --target="$HOME" --restow .
}
