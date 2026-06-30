# Void Neon Principles

## Purpose

Void Neon exists to build a desktop environment that is fast, consistent, reproducible, and enjoyable to use.

It is not intended to become a general-purpose Linux distribution.

It is an opinionated desktop environment built around the workflows of experienced Unix users while remaining approachable to anyone willing to learn.

Every decision should improve consistency, simplicity, or usability.

If a feature cannot justify its existence, it should not exist.

---

# The Unix Philosophy

Void Neon follows classic Unix principles.

* Build small tools.
* Give every tool one responsibility.
* Compose simple tools together.
* Prefer plain text.
* Prefer shell scripts when they are sufficient.
* Avoid unnecessary abstraction.
* Avoid unnecessary dependencies.

The simplest solution is usually the correct solution.

---

# Keyboard First

The keyboard is the primary interface.

The mouse is available when it is the better tool—not because it is the default.

Every frequently performed task should be executable without leaving the keyboard.

The goal is not to eliminate the mouse.

The goal is to remove the need for it.

---

# Roles Over Applications

The desktop depends on capabilities rather than software.

Examples:

* file-manager
* clipboard-manager
* app-launcher
* git-client
* browser
* terminal

These wrappers define what the desktop needs.

They do not define how those needs are implemented.

Applications can change.

Workflows should not.

---

# Small Reusable Components

Every script should have one responsibility.

Examples:

* tui-run launches terminal applications.
* osd displays notifications.
* file-manager launches the current file manager.

These components should be reusable throughout the system.

Avoid duplicating logic.

---

# Consistency Above Features

A smaller feature set with a consistent experience is preferable to a larger feature set with inconsistent behavior.

Every application should feel like part of the same desktop.

This includes:

* colors
* typography
* spacing
* notifications
* launchers
* terminal behavior
* window management

The desktop should feel intentional.

---

# Reproducibility

A clean installation should become an identical Void Neon system.

Configuration belongs in version control.

Manual configuration should be minimized.

The installer should be safe to run multiple times.

Dotfiles are the source of truth.

---

# Hardware Matters

Void Neon is designed with real hardware in mind.

The desktop should feel integrated with the machine.

Examples include:

* proper touchpad behavior
* hardware brightness controls
* keyboard backlight support
* power profile integration
* battery-aware behavior

Hardware support is considered part of the desktop experience.

---

# Visual Design

Visual design should reduce distraction.

Guidelines:

* black backgrounds
* restrained use of color
* cyan as the primary accent
* Inter typography
* dense information
* minimal ornamentation

The interface should communicate information rather than decoration.

---

# Dependencies

Every dependency should justify its existence.

Before adding software, ask:

* Does it solve a real problem?
* Is there a simpler solution?
* Can an existing tool already solve it?
* Does it fit the philosophy of the desktop?

If the answer is no, do not add it.

---

# Documentation

Configuration explains how.

Documentation explains why.

Architectural decisions should be recorded so future changes preserve the philosophy of the project.

Future contributors—including future versions of ourselves—should understand the reasoning behind decisions.

---

# Evolution

Void Neon is expected to evolve.

Applications may change.

Configuration may change.

The installer will improve.

The guiding principles should remain stable.

When making design decisions, optimize for long-term maintainability rather than short-term convenience.

---

# Success

Void Neon succeeds when it disappears.

The desktop should become so natural that attention shifts away from the operating system and back to the work being done.

The best desktop is the one that gets out of the way.

