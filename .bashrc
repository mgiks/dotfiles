#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

export TZ='Asia/Bishkek'
export PATH=$PATH:$HOME/.scripts/bin
export CDPATH=:$HOME/:$HOME/Projects/:$HOME/.config/:..
export GOPATH=$HOME/.go
export FZF_DEFAULT_OPTS="
    $FZF_DEFAULT_OPTS
    --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
    --color info:7,prompt:2,spinner:1,pointer:232,marker:1
"

alias wa="/home/mgik/.scripts/wal/wal.sh"
alias wiki='wiki-tui '
alias grep='grep --color=always '
alias ls='exa --color=always --icons '
alias ll='ls -l '
alias tree='ls -T --group-directories-first '
alias wifi='nmcli device wifi rescan && nmcli device wifi '
alias pacman='pacman --config ~/.pacman.conf '
alias yay='yay --config ~/.pacman.conf '
alias y='yay -S '
# Needed to make bash resolve aliases after the first one
alias sudo='sudo '
alias chrome='google-chrome-stable '
alias i='sudo pacman -S '

set -o vi

if [[ -x "$(command -v tmux)" ]] && [[ -n "${DISPLAY}" ]] && [[ -z "${TMUX}" ]]; then
    exec tmux new >/dev/null 2>&1
fi

bind -x '"\C-f":"fproj"'

sleep 0.1 && fastfetch

eval "$(starship init bash)"
