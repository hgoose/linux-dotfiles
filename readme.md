# goosemane linux dotfiles

## Fish:
```
Install fish package
chsh /usr/bin/fish -> change defualt shell -> then reboot system
Install oh-my-fish
omf install gentoo
```
https://github.com/oh-my-fish/oh-my-fish

## Nvim: 

**(Nvim Install Plugins):**

```
copy over init.vim to ~/.config/nvim

install plug ~

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

then go into nvim and use PlugInstall
```
**(Vim Plug):** https://github.com/junegunn/vim-plug

**(Nvim Set up AutoComplete):** See nvim_auto_complete.txt

**(Nvim Set up MD Previewer):** https://github.com/instant-markdown/vim-instant-markdown

## Kitty:
```
Copy over kitty.conf to ~/.config/kitty

Clone the themes repo: 
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

Choose a theme and create a symlink:
cd ~/.config/kitty
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf

Favorite Themes:
PaulMillr (using)

- Decent -
Molokai
LiquidCarbonTransparent
JetBrains_Darcula
MaterialDark
Alucard
Floraverse
Argonaut
Atom
Brogrammer
Dark_Pastel
Dracula
```
https://github.com/dexpota/kitty-themes

### Other:

Distro: Arco Linux L

- (DE): Xfce4
- (WM): Xfwm4
- (DE Theme): Arc-Dark
- (WM Theme): empty (create dir in /usr/share/themes -> mkdir empty/xfwm4 -> touch themerc)