. "$XDG_CACHE_HOME/wal/colors.sh"

ags_icons_files=($(fd . "$XDG_CONFIG_HOME/ags/icons"))

for ags_icon_file in ${ags_icons_files[@]}; do
    echo $ags_icon_file
    new_icon_file=$(cat $ags_icon_file | tr " " '\n' | sed "s/fill=\".\+\"/fill=\""$color1"\"/" | tr '\n' " ")
    echo $new_icon_file
    echo $new_icon_file >"$ags_icon_file"
done
