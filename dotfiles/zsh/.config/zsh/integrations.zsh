# Integrations

FZF_SHARE=/usr/share/fzf

if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh --cmd cd)" # replace cd with zoxide, or z command
fi

if command -v starship >/dev/null 2>&1; then
    eval "$(starship init zsh)"
fi

if [[ -f "$FZF_SHARE/completion.zsh" ]]; then
    source "$FZF_SHARE/completion.zsh"
fi

if [[ -f "$FZF_SHARE/key-bindings.zsh" ]]; then
    source "$FZF_SHARE/key-bindings.zsh"
fi
