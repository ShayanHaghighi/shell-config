# Load plugins (guard against multiple sourcing)
if [[ -z "$_zsh_autosuggestions_loaded" ]]; then
    source "$XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
     _zsh_autosuggestions_loaded=1
fi

source "$XDG_CONFIG_HOME/zsh/syntax-highlighting-theme.sh"

# too much for now, so disabling
#source "$XDG_CONFIG_HOME/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/ $fpath)
#rm -f "$ZDOTDIR/.zcompdump"; compinit

eval "$(zoxide init zsh)"

# fzf keybindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export HISTSIZE=10000000
export SAVEHIST=10000000
setopt inc_append_history
# Carapace completion
#zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
zstyle ':completion:*' list-colors 'yes'
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

source <(carapace _carapace)


# Shell options
set -o emacs

# dircolors for ls/grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

setxkbmap -option caps:swapescape

# source /usr/share/doc/fzf/examples/key-bindings.zsh
# source /usr/share/doc/fzf/examples/completion.zsh
fpath=($XDG_CONFIG_HOME/zsh/completions $fpath)

export PATH="$PATH:$HOME/.local/bin"
if [[ -z "$_zsh_syntax_highlighting_loaded" ]]; then
    source "$XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    _zsh_syntax_highlighting_loaded=1
fi

