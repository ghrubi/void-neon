post_install() {
    "$SCRIPTS_DIR/apply-gsettings.sh" || true
    "$SCRIPTS_DIR/user/git.sh"
}
