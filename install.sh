#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export REPO_ROOT
export PACKAGES_DIR="$REPO_ROOT/packages"
export DOTFILES_DIR="$REPO_ROOT/dotfiles"
export SYSTEM_DIR="$REPO_ROOT/system"
export SERVICES_DIR="$REPO_ROOT/services"
export SCRIPTS_DIR="$REPO_ROOT/scripts"
export WALLPAPERS_DIR="$REPO_ROOT/wallpapers"
export VOID_NEON_USER="${VOID_NEON_USER:-${SUDO_USER:-$USER}}"

source "$SCRIPTS_DIR/lib.sh"
source "$SCRIPTS_DIR/preflight.sh"
source "$SCRIPTS_DIR/hosts.sh"
source "$SCRIPTS_DIR/repositories.sh"
source "$SCRIPTS_DIR/packages.sh"
source "$SCRIPTS_DIR/services.sh"
source "$SCRIPTS_DIR/system.sh"
source "$SCRIPTS_DIR/dotfiles.sh"
source "$SCRIPTS_DIR/post-install.sh"
source "$SCRIPTS_DIR/verify.sh"
source "$SCRIPTS_DIR/finish.sh"

log "Beginning preflight..."
preflight

# detect_host

log "Installing repositories..."
install_repositories

log "Installing packages..."
install_package_sets base terminal fonts desktop apps medibase terminal fonts desktop apps media

log "Enabling services..."
enable_service_sets base desktop

# if manifest_exists "$SERVICES_DIR/hosts/$HOST_PROFILE.txt"; then
#     enable_service_file "$SERVICES_DIR/hosts/$HOST_PROFILE.txt"
# fi

log "Installing system files..."
install_system_files

log "Installing dotfiles..."
install_dotfiles

log "Running post-install..."
post_install

log "Verifying installation..."
verify

finish
