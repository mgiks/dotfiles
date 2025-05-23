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

alias fzf='fzf --no-color'
alias grep='grep --color=always '
alias ls='exa --color=always --icons '
alias ll='ls -l '
alias tree='ls -T --group-directories-first'
alias wifi='nmcli device wifi rescan && nmcli device wifi '
alias pacman='pacman --config ~/.pacman.conf '
alias yay='yay --config ~/.pacman.conf '
alias y='yay -S '
# Needed to make bash resolve aliases after the first one
alias sudo='sudo '
alias chrome='google-chrome-stable '
alias s='sudo pacman -S '

if command -v tmux &>/dev/null && [[ -n "$PS1" ]] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [[ -z "$TMUX" ]] && [[ "$XDG_SESSION_TYPE" = 'wayland' ]]; then
    exec tmux
fi

bind -x '"\C-f":"fproj"'

sleep 0.1 && fastfetch

eval "$(starship init bash)"
