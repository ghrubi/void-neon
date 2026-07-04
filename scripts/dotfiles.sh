install_dotfiles() {
    (
        cd "$DOTFILES_DIR"

        stow \
            --target="$HOME" \
            --restow \
            .
    )
}
