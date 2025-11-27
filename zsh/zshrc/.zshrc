# -----------------------------
# ~/.zshrc
# -----------------------------
[[ -o interactive ]] || exit 0

autoload -Uz compinit
compinit

# Enable completion system
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/editing.zsh"
source "$ZDOTDIR/bindings.zsh"
autoload -Uz compinit
compinit
# Starship prompt
eval "$(starship init zsh)"




