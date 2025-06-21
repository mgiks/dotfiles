cat "$HOME/.cache/wal/colors.scss" >"$HOME/.config/ags/utility-styles/_generated-colors.scss"

. "/home/mgik/.cache/wal/colors.sh"

ags_icon_folder="/home/mgik/.config/ags/icons/"
ags_icons_files=$(ls "$ags_icon_folder")

for ags_icon_file in "${ags_icons_files[@]}"; do
    new_svg="$(tr " " '\n' <"$ags_icon_file" | sed "s:fill=\".\+\":fill=\"$color1\":" | tr '\n' " ")"

    echo -n "$new_svg" >"$ags_icon_file"
done

ags quit &>/dev/null
ags run --gtk4 &>/dev/null &
