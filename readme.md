# goosemane linux dotfiles

(Fish):
Install fish package
chsh /usr/bin/fish -> change defualt shell -> then reboot system
Install oh-my-fish
omf install gentoo


(Nvim):

copy over init.vim to ~/.config/nvim

install plug ~

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

then go into nvim and use PlugInstall


(Kitty):
Themes
Clone the themes repo: 

git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

cd ~/.config/kitty
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf

Alucard
Floraverse
Grape
Argonaut
Atom
Brogrammer
Dark_Pastel
Dracula

