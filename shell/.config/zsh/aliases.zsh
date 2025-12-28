# Aliases

# Common tools shortened
alias python=python3
alias fd="fdfind"
alias bat="batcat"
alias ...='cd ../..'

# Quick opening of tools
alias webstorm='gtk-launch webstorm.desktop'
alias idea="$HOME/Apps/idea-IU-252.27397.103/bin/idea"

# Common commands
alias la='ls -a'
alias l='ls'
alias ls='eza --group-directories-first  --color=always --icons=always'

alias copy='xclip -selection clipboard'

alias gstat="watch -c -n 0.5 git -c color.status=always status"
alias fkill='kill -9 $(ps aux | fzf | awk "{print $2}")'


# Defaults
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
