xrandr --output eDP-1 --mode 1920x1080 --rate 60 &

picom --config ~/.config/picom.conf &

if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

exec dwm
