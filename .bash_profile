#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if uwsm check may-start &>/dev/null; then
    exec uwsm start hyprland.desktop
fi
