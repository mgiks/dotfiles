. "$XDG_CACHE_HOME/wal/colors.sh"

ags_icons_files=($(fd . "$XDG_CONFIG_HOME/ags/icons"))

for ags_icon_file in ${ags_icons_files[@]}; do
    new_svg=$(cat $ags_icon_file | tr " " '\n' | sed "s/fill=\".\+\"/fill=\""$color1"\"/" | tr '\n' " ")
    echo -n "$new_svg" >$ags_icon_file
done
