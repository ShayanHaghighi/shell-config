# Aliases
alias la='ls -a'
alias l='ls'
alias ls='eza --group-directories-first  --color=always --icons=always'
#alias lt='eza -T -L ${1:-15} --color=always --icons=always --git-ignore | batcat'
#alias ll='eza --group-directories-first --color=always --icons=always  -lh --git --sort=modified | batcat'

alias cat='batcat'
alias catp='batcat --paging=always'

alias fkill='kill -9 $(ps aux | fzf | awk "{print $2}")'
alias fcdr='fcd -r'
alias fcdra='fcd -r -a'
alias fcda='fcd -a'

alias python=python3
alias ...='cd ../..'
alias webstorm='gtk-launch webstorm.desktop'
alias idea="$HOME/Apps/idea-IU-252.27397.103/bin/idea"
alias copy='xclip -selection clipboard'
alias fd="fdfind"

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


run(){
    eval "$@ &> /dev/null & disown"
    echo "$!"
}

ll(){
    eval "eza --group-directories-first --color=always --icons=always  -lh --git --sort=modified $@ | batcat"
}

lt(){
    eval "eza -T -L ${1:-15} --color=always --icons=always --git-ignore | batcat"
}
ltl(){
    eval "eza -Tlh -L ${1:-15} --color=always --icons=always --git-ignore | batcat"
}
