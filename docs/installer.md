# Installer

## Goal

A clean installation should become a complete Void Neon desktop using one command.

---

## Responsibilities

The installer should:

- install packages
- enable services
- apply GTK settings
- install dotfiles
- configure Git
- apply hardware tweaks

---

## Repository

```
packages/
dotfiles/
scripts/
```

Package manifests define software.

Dotfiles define configuration.

Scripts perform installation.

---

## Package Manifests

```
base.txt
desktop.txt
development.txt
fonts.txt
media.txt
terminal.txt
```

Each manifest has one responsibility.

---

## Services

Examples:

- seatd
- dbus
- power-profiles-daemon

The installer enables required services automatically.

---

## Dotfiles

GNU Stow installs all configuration.

Dotfiles remain the source of truth.

---

## Future

The installer should become idempotent.

Running it multiple times should never damage an existing installation.
