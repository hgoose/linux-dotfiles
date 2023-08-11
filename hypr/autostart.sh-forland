#!/usr/bin/bash

#plugins
#hyprctl plugin load $HOME/.config/hypr/plugins/csgo-vulkan-fix.so

# variables
config=$HOME/.config/hypr
scripts=$config/scripts

# notification daemon
dunst &

# brightnessctl
brightnessctl set 24000

# waybar
$scripts/launch_waybar &
#$scripts/tools/dynamic &

# wallpaper
#$scripts/wall $HOME/Pictures/NewWallpapers/r32.png &
swww init
swww img home/datura/Backgrounds/1/cute-devil-girl-tuvte9u70chm12cl.jpg
#hyprctl hyprpaper unload all

# effects
$scripts/rgb &

# other
/usr/lib64/polkit-kde-authentication-agent-1 &
/usr/lib64/polkit-kde-authentication-agent-1 &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &

# brightnessctl set 15%

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP

rfkill unblock all

# hyprctl setcursor Bibata-Modern-Classic 24
#hyprctl setcursor Bibata-Modern-Classic 24

sudo intelpwm
