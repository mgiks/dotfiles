export colors_file="$HOME/.cache/wal/colors.tmux"
export tmux_config_base="$HOME/.scripts/wal/config-bases/tmux-config-base"
export tmux_config="$HOME/.config/tmux/tmux.conf"

echo -e "$(cat "$colors_file")\n$(cat "$tmux_config_base")" >"$tmux_config"
