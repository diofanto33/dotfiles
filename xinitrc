# (delete this line) xrandr requires xf86-video-amdgpu xf86-video-vesa 

xrandr --output eDP --mode 1920x1080 --rate 60.01 --set "TearFree" "on"

picom --config ~/.config/picom.conf &

if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

exec dwm
