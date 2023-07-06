/usr/bin/pipewire &
/use/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

xrandr --output eDP --mode 1920x1080 --rate 60.01 --set "TearFree" "on"

picom --config ~/.config/picom.conf &

if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

exec dwm
