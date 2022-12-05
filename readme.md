# goosemane linux dotfiles

### I3WM <3

```
./i3 for details and config 

~ mv config to ~/.config/i3

(Workspace manager):
https://github.com/infokiller/i3-workspace-groups#installation

	(Setup):
		python3 -m pip install i3-workspace-groups

		for further information refer to the github page
```

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

**(Nvim Set up Latex Previewer):** https://github.com/xuhdev/vim-latex-live-preview

**(Nvim AutoSave):** https://github.com/907th/vim-auto-save

**(Nvim Snippits):** https://github.com/SirVer/ultisnips

```
~ Create dir ~/.config/nvim/UltiSnips/
~ mv tex.snippets to this dir

:UltiSnipsEdit (to edit snips)

```


**(More on latex previewer):**

``` 
(fix: https://github.com/xuhdev/vim-latex-live-preview/issues/105):

Prereq:
	python
	python-pip
	pip install neovim
	evince (Defualt Viewer)
	zathura (using)

(_start_):
:LLPStartPreview


``` 

**(Nvim Latex AutoComplete):**

```
~ See nvim_auto_complete.txt to ensure coc is set up

install texlab package

inside nvim :CocInstall coc-texlab

```

### Zarthura  (pdf viewer for latex):

```
Colors set to dark grey (see zathurarc)

~ Copy over zathurarc to ~/.config/zathura 

```

## Kitty (Background Image):

```
Copy over kitty_with_background.conf to ~/.config/kitty (Rename to kitty.conf)
```

## Kitty (Theme Pack):
```
Copy over kitty.conf to ~/.config/kitty

Clone the themes repo: 
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

Choose a theme and create a symlink:
cd ~/.config/kitty
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf

Favorite Themes:
gruvbox_dark (using)
DotGov
Borland 
PaulMillr 

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
- (WM): i3
- (DE Theme): Arc-Dark
- (WM Theme): empty (create dir in /usr/share/themes -> mkdir empty/xfwm4 -> touch themerc)

# Images:


### (Preview) Kitty with theme gruvbox_dark 
![Preview](https://i.imgur.com/mTgOgEs.png)

### Wallpaper
![Background](https://i.imgur.com/NUX6Lq9.jpg)
