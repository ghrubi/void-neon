# Void Neon Architecture

## Overview

Void Neon is built around the Unix philosophy:

- Small tools
- One responsibility per script
- Composable components
- Clear abstractions
- Minimal dependencies

The desktop should depend on **roles**, not applications.

---

## Philosophy

The desktop never launches applications directly.

Instead it launches wrapper scripts.

Example:

SUPER+F

↓

file-manager

↓

tui-run yazi

↓

Ghostty

↓

Yazi

Only one place knows that Yazi is the current file manager.

Changing applications should require editing one wrapper instead of dozens of configuration files.

---

## Infrastructure

Infrastructure scripts provide reusable functionality.

Examples:

```
tui-run
osd
```

These scripts know how to:

- launch TUIs
- configure Ghostty
- create consistent window titles/classes
- display notifications

---

## Application Wrappers

Application wrappers expose capabilities.

Examples:

```
file-manager
clipboard-manager
app-launcher
git-client
browser
terminal
```

These wrappers represent desktop functionality rather than specific software.

---

## Configuration

Configuration is divided into:

- Dotfiles
- Package manifests
- Installer scripts

GNU Stow manages all configuration.

Dotfiles are the source of truth.

---

## Design Goal

Changing software should require changing one wrapper instead of changing:

- Hyprland
- Waybar
- Launchers
- Scripts
- Documentation

The desktop should depend on interfaces rather than implementations.
