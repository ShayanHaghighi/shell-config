if [[ -n "$ZSH_DEBUGRC" ]]; then
    zmodload zsh/zprof
fi
# -----------------------------
# ~/.zshrc
# -----------------------------
[[ -o interactive ]] || exit 0

autoload -Uz compinit
compinit

# Enable completion system
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/completions.zsh"
source "$ZDOTDIR/functions.zsh"
source "$ZDOTDIR/options.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/bindings.zsh"
# Starship prompt
eval "$(starship init zsh)"






if [[ -n "$ZSH_DEBUGRC" ]]; then
    zprof
fi
