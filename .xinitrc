export WALLPAPER=".config/Wallpaper-Blackhole.png"
export $(dbus-launch)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
exec i3
setxkbmap pl
