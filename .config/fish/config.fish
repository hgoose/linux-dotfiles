# neofetcr
# swww init
# wlr-randr --output HDMI-A-1 --mode 1920x1080@119.878998
set -x PATH $HOME/.cargo/bin $PATH
# Remove fish greeting
set -U fish_greeting

# xrandr --newmode "1440x1080_100.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
# xrandr --addmode HDMI-1-0 1440x1080_100.00
# xrandr --addmode eDP-1 1440x1080_100.00

# USER DEFINED ALIASES
alias goto="cd ($HOME/.config/rofi/launchers/type-3/scripts/jump2)"
alias wgetu="wget --user-agent=Yandex"
alias ifw="inkscape-figures watch"
alias ism="python3 ~/inkscape-shortcut-manager/main.py"
alias go="nohup google-chrome-stable >/dev/null 2>&1 & && pidof chrome | disown"
# alias kp="kill picom"
alias polybar="~/.config/polybar/launch.sh"
alias pyflakes="nvim ~/.local/share/nvim/mason/packages/python-lsp-server/venv/lib/python3.10/site-packages/pyflakes/messages.py"
alias pycodestyle="nvim ~/.local/share/nvim/mason/packages/python-lsp-server/venv/lib/python3.10/site-packages/pycodestyle.py"
alias flake8="nvim ~/.local/share/nvim/mason/packages/python-lsp-server/venv/lib/python3.10/site-packages/pylsp/plugins/flake8_lint.py"
alias picomc="nvim ~/.config/picom/picom.conf"
alias goodjob="nohup ~/good_job/good_job >/dev/null 2>&1 &" 
alias wscan="nmcli dev wifi rescan" 
alias sublime="~/sublime_text_3/sublime_text"
alias uu="ls -l"
alias u="ls -a"
alias gpush="git add .; git commit -m "all"; git push"
alias neo="clear; neofetch"
alias discord="nohup discord >/dev/null 2>&1 & && pidof Discord | disown"
alias nt="nohup nautilus . >/dev/null 2>&1 &"
alias clock="tty-clock -t -c -C 5"
alias calc="libreoffice --calc"
alias n="nvim"
alias spush="sudo git add .; sudo git commit -m "commit"; git push"
alias lx="cd ~/dev/latex"
alias hh="cd ~/.config/nvim/lua/core"
alias tmp="cd ~/tmp"
alias dev="cd ~/dev/"
alias fishc="n ~/.config/fish/config.fish"
alias kittyc="n ~/.config/kitty/kitty.conf"
alias i3c="nvim ~/.config/i3/config"
alias c="clear; ~/shell-color-scripts/colorscripts/tux"
alias cls="clear; neofetch"
alias x="sudo chmod +x"
alias dot="cd ~/.config"
alias nviminit="nvim ~/.config/nvim/init.lua"
alias kazam="nohup kazam & && pidof kazam | disown"
alias pd="push-dotfiles"
alias ss="cd ~/springsemester/"
alias bluetooth="nvim /etc/bluetooth/main.conf"

function stat
    ./$argv && echo "status $status" 
end

function gccc
    gcc $argv -std=c++14 -lstdc++
end

function mk
    touch $argv;sudo chmod +x $argv;nvim $argv
end

# Rebind clear to also run neofetch
function fish_user_key_bindings
    bind \cl 'clear;~/shell-color-scripts/colorscripts/tux; commandline -f repaint'
end

# Overload touch to also make file executable
# function touch 
# 	command touch $argv
# 	sudo chmod +x $argv
# end

# Overload touch to also make file executable and also open the file in nvim
function touchn 
	command touch $argv && sudo chmod +x $argv && nvim $argv
end

# show directory listing on directory change
function __ls_after_cd__on_variable_pwd --on-variable PWD
	set -q LS_AFTER_CD || set -xg LS_AFTER_CD true
    if test "$LS_AFTER_CD" = true; and status --is-interactive
        ls -GF
    end
end

# Set Term
function setterm
	if [ $(echo $TERM) != 'xterm-256color' ]
		set TERM xterm-256color
	end
end
setterm

# Set Editor
function seteditor
	if [ $(echo $EDITOR) != 'nvim' ]
		set EDITOR nvim 
	end
end
seteditor

# Set BIN
function setbin
	if [ $(echo $BIN) != '/usr/bin' ]
		set BIN /usr/bin
	end
end
setbin

# Disable dpms
function dpmsoff
	if [ $(xset q | grep -e "DPMS" | grep -v "Power" | awk '{print $3}') = 'Enabled' ]
		xset -dpms
	end
end
dpmsoff

# set rate 300 50
function setrate
	if [ $(xset q | grep -e "repeat delay" | awk '{print $4 $7}') != '30050' ]
		xset r rate 250 40
	end
end
setrate

# Disable Screensaver
function ssoff
	if [ $(xset q | grep timeout | awk '{print $2}') != '0' ]
		xset s off
	end
end
ssoff

# Kill i3bar if running
# function endbar
# 	if pgrep bar > /dev/null
# 		kill i3bar > /dev/null
# 	end
# end
# endbar

# Set lang vorak
# function dvorak
#  	set mylang (setxkbmap -query | grep layout | awk '{ print $2 }')
# 	if [ $mylang != 'dvorak' ]
# 		setxkbmap -layout us -variant dvorak
# 	end
# end
# dvorak

function qwerty
 	set mylang (setxkbmap -query | grep layout | awk '{ print $2 }')
	if [ $mylang != 'us' ]
		setxkbmap us
	end
end

# Set Extend Monitors
function dualmonitor
	xrandr --output HDMI-1-0 --primary --mode 1920x1080 --rate 144 --output eDP-1 --mode 1920x1080 --rate 144 --right-of HDMI-1-0
end

# Set Mirror Displays
function mirrordisplay
    if [ $( xrandr --listactivemonitors | grep Monitors | awk '{print $2}') = '1' ]
        xrandr --output HDMI-1-0 --primary --mode 1920x1080 --rate 144 --output eDP-1 --mode 1920x1080 --rate 144 --same-as HDMI-1-0
    end
end
mirrordisplay

# Make and activate python virtualenv
function mkvenv
	virtualenv $argv
	source ./$argv/bin/activate.fish
end

# Remove and deactivate python virtualenv
function rmvenv
	rm -rf $argv
	deactivate
end


# function mux
# 	if pgrep tmux > /dev/null 
# 		true
# 	else
# 		exec tmux new -s datura
# 	end
# end
# mux

# function :x
#   set count 0
#   while [ $count -lt 100 ]
#     for i in (seq 1 10)
#       echo -n "you're not in vim bozo "
#       set count (math $count + 1)
#       if [ $count -ge 100 ]
#         break
#       end
#       sleep 0.1
#     end
#     echo
#     sleep 0.5
#   end
# end
#
# polybar


# Redundant
function pbar
	sudo cp -R ~/repos/polybar1/polybar-$argv ~/.config/polybar && ~/.config/polybar/launch.sh
end

# function to refresh fish shell
function refresh
	clear && ~/shell-color-scripts/colorscripts/tux	 && fish
end

# Function to streamline searching packages
function psearch
	sudo pacman -Ss $argv
end

#function to move from $HOME/Downloads
function mvdn
  sudo mv ~/Downloads/$argv $argv
end

# Function to make directory and cd into it
function mcd
  eval {mkdir, cd}\ $argv\; 
end

# Function to push dotfiles
function push-dotfiles
  sudo git -C ~/linux-dotfiles add .;
  sudo git -C ~/linux-dotfiles commit -m "changes";
  git -C ~/linux-dotfiles push
end

# Function for rerouting nohup output to /dev/null
function nhup
  nohup $argv >/dev/null 2>&1&
end

# Function to open nautilus
function nt
  nohup nautilus . >/dev/null 2>&1 &
end

# Bobthefish options
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_color_scheme zenburn
# https://fishshell.com/docs/current/index.html
# https://github.com/jorgebucaran/cookbook.fish
# colors to set or unset

set fish_color_autosuggestion "#969896"
set fish_color_cancel -r
set fish_color_command "#0782DE"
set fish_color_comment "#f0c674"
set fish_color_cwd "#008000"
set fish_color_cwd_root red
set fish_color_end "#b294bb"
set fish_color_error "#fb4934"
set fish_color_escape "#fe8019"
set fish_color_history_current --bold
set fish_color_host "#85AD82"
set fish_color_host_remote yellow
set fish_color_match --background=brblue
set fish_color_normal normal
set fish_color_operator "#fe8019"
set fish_color_param "#81a2be"
set fish_color_quote "#b8bb26"
set fish_color_redirection "#d3869b"
set fish_color_search_match bryellow background=brblack
set fish_color_selection white --bold background=brblack
set fish_color_status red
set fish_color_user brgreen
set fish_color_valid_path --underline
set fish_pager_color_completion normal
set fish_pager_color_description "#B3A06D" yellow
set fish_pager_color_prefix normal --bold underline
set fish_pager_color_prefix white --bold --underline
set fish_pager_color_progress brwhite --background=cyan
set fish_color_search_match --background="#60AEFF"
fish_add_path /home/datura/.spicetify
