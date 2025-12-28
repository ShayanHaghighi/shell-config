run(){
    eval "$@ &> /dev/null & disown"
    echo "$!"
}

ll(){
    eval "eza --group-directories-first --color=always --icons=always  -lh --git --sort=modified $@ | batcat"
}

lt(){

    re='^[0-9]+$'
    depth=15
    other_args=""
    if [[ $1 =~ $re ]] ; then
        depth=$@
    else
        other_args=$@
    fi

    eval "eza -T -L $depth --color=always --icons=always --git-ignore  $other_args | batcat"
}

ltl(){
    lt "-l"
}

bdiff(){
    git diff $1 | batcat -l diff --theme base16
}

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}
