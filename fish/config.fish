xset r rate 300 50 
xset s off 
xset -dpms
xrandr --auto
set BIN "/usr/bin"
set TERM xterm-256color
set EDITOR nvim

function endbar
	if pgrep bar > /dev/null
		kill i3bar > /dev/null
	end
end
endbar

function setlang
 	set mylang (setxkbmap -query | grep layout | awk '{ print $2 }')
	if [ $mylang != 'dvorak' ]
		setxkbmap dvorak
	end
end
setlang

# polybar

# USER DEFINED ALIASES
alias pycon="nvim ~/learn/Python/concepts"
alias go="nohup google-chrome-stable >/dev/null 2>&1 & && pidof chrome | disown"
alias kp="kill picom"
alias p="picom"
alias polybar="~/.config/polybar/launch.sh"
alias testp="cd ~/springsemester/calc/testPrep"
alias dphin="dolphin ."
alias keymap="setxkbmap"
alias pyflakes="nvim ~/.local/share/nvim/mason/packages/python-lsp-server/venv/lib/python3.10/site-packages/pyflakes/messages.py"
alias pycodestyle="nvim ~/.local/share/nvim/mason/packages/python-lsp-server/venv/lib/python3.10/site-packages/pycodestyle.py"
alias flake8="nvim ~/.local/share/nvim/mason/packages/python-lsp-server/venv/lib/python3.10/site-packages/pylsp/plugins/flake8_lint.py"
alias fm="fm6000 -f ~/repos/fetch-master-6000/ascii_arts/catart.txt"
alias chap3="open ~/springsemester/calc/notes/lectures/chapter3/main.pdf google-chrome-stable"
alias openmain="open main.pdf google-chrome-stable"
alias picomc="nvim ~/.config/picom/picom.conf"
alias s="sudo pacman -S"
alias rno="rm -rf nohup.out"
alias mch2="cd ~/springsemester/calc/notes/lectures/chapter2"
alias dnotes="cd ~/springsemester/dmed/notes"
alias mnotes="cd ~/springsemester/calc/notes/lectures"
alias c3="cd ~/springsemester/calc/notes/lectures/chapter3 && nvim main.tex"
alias dhw="cd ~/springsemester/dmed/hw"
alias mhw="cd ~/springsemester/calc/hw"
alias wscan="nmcli dev wifi rescan" 
alias sublime="~/sublime_text_3/sublime_text"
alias upd="sudo pacman -Syyu"
alias chrome="nohup /usr/bin/google-chrome-stable & && pidof chrome | disown"
alias uu="ls -l"
alias u="ls -a"
alias gpush="git add .; git commit -m "all"; git push"
alias neo="clear; neofetch"
# alias discord="nohup discord & && pidof Discord | disown "
alias discord="nohup discord >/dev/null 2>&1 & && pidof Discord | disown"
alias tm="tmux new"
# alias nt="nohup nautilus >/dev/null 2>&1 &"
alias spy="cd ~/dev/Python/hw"
alias file="xdg-open ."
alias clock="tty-clock -t -c -C 5"
alias calc="libreoffice -calc"
alias ::="python3"
alias n="nvim"
alias nrestore="nitrogen --restore"
alias spush="sudo git add .; sudo git commit -m "commit"; git push"
alias lx="cd ~/dev/latex"
alias lxc="pdflatex -pdf"
alias killpanel="killall xfce4-panel"
alias hh="cd ~/.config/nvim/lua/core"
alias tmp="cd ~/tmp"
alias dev="cd ~/dev/"
alias fishc="n ~/.config/fish/config.fish"
alias kittyc="n ~/.config/kitty/kitty.conf"
alias termc="nvim ~/.config/terminator/config"
alias i3c="nvim ~/.config/i3/config"
alias pn="cd ~/dev/latex/notes/python/"
alias picom="nohup picom >/dev/null 2>&1 &"
# alias c="clear; fm6000 -f ~/repos/fetch-master-6000/ascii_arts/catart.txt"
alias c="clear; fm6000 -f ~/repos/fetch-master-6000/ascii_arts/astronaut.txt"
alias cls="clear; neofetch"
alias x="sudo chmod +x"
alias dot="cd ~/.config"
alias nviminit="nvim ~/.config/nvim/init.lua"
alias kazam="nohup kazam & && pidof kazam | disown"
alias pd="push-dotfiles"
alias ss="cd ~/springsemester/"
alias bluetooth="nvim /etc/bluetooth/main.conf"

function pbar
	sudo cp -R ~/repos/polybar1/polybar-$argv ~/.config/polybar && ~/.config/polybar/launch.sh
end

# Remove fish greeting
set -U fish_greeting

# function to refresh fish shell
function refresh
	clear && fish	
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
