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

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fzf='fzf --no-color'
alias ll='ls -l'
alias wifi='nmcli device wifi rescan && nmcli device wifi'
chrome='google-chrome-stable'

bind -x '"\C-f":"fproj"'

sleep 0.1 && fastfetch

eval "$(starship init bash)"
