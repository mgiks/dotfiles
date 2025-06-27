cat "$HOME/.cache/wal/colors.scss" >"$HOME/.config/ags/utility-styles/_generated-colors.scss"

. "/home/mgik/.cache/wal/colors.sh"

ags_icon_folder="/home/mgik/.config/ags/icons/"
ags_icon_files=("$ags_icon_folder"/*.svg)

for ags_icon_file in "${ags_icon_files[@]}"; do
    sed "s|\(fill=\)\(.\).\{7\}\(.\)|\1\2$color1\3|" -i "$ags_icon_file"
done

ags quit &>/dev/null
ags run --gtk4 &>/dev/null &
