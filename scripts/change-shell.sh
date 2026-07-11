#!/bin/bash

NEW_SHELL="zsh"
SHELL_PATH="$(which $NEW_SHELL)"

command -v $SHELL_PATH >/dev/null 2>&1 || {
    echo "$SHELL_PATH command not found." >&2
    exit 1
}

# Execute chsh to permanently change the user's login shell
echo "Changing login shell to $NEW_SHELL..."
chsh -s "$SHELL_PATH"

if [ $? -eq 0 ]; then
    echo "Shell successfully changed! Please log out and log back in for the changes to take effect."
else
    echo "Failed to change the shell. Did you enter the correct password?"
fi

