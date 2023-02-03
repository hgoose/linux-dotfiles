#!/usr/bin/bash

# move kitty config to ~/linux-dotfiles

echo "Select Option:

1: Kitty
2: Fish
3: Termite
4: Astrovim 
5: i3
6: neofetch
7: zathura
8: picom
9: latex
10: alacritty
11: Only push dotfiles
12: Copy all configs

"
read OPTION


if [ "$OPTION" = "1"  ];
then
	sudo cp ~/.config/kitty/kitty.conf ~/linux-dotfiles/kitty && echo "Copied Kitty Config to ~/linux-dotfiles/kitty" || echo "failed to move config to linux-dotfiles"

elif [ "$OPTION" = "2" ];
then
	sudo cp ~/.config/fish/config.fish ~/linux-dotfiles/fish && echo "Copied Fish Config to ~/linux-dotfiles/fish" || echo "failed to move config to linux-dotfiles"

elif [ "$OPTION" = "3" ];
then
	sudo cp ~/.config/termite/config ~/linux-dotfiles/termite\ configs && echo "copied termite config to ~/linux-dotfiles/termite" || echo "failed to move config to linux-dotfiles"

elif [ "$OPTION" = "4" ];
then
	sudo cp ~/.config/nvim/init.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (init.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (init.lua) to linux-dotfiles"
	sudo cp ~/.config/nvim/lua/core/mappings.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (mappings.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (mappings.lua) to linux-dotfiles"
	sudo cp ~/.config/nvim/lua/core/plugins.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (plugins.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (plugins.lua) to linux-dotfiles"
	sudo cp ~/.config/nvim/lua/core/options.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (options.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (options.lua) to linux-dotfiles"
	
elif [ "$OPTION" = "5" ];
then
	sudo cp ~/.config/i3/config ~/linux-dotfiles/i3 && echo "Copied i3 config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles"
	sudo cp ~/.config/i3/i3blocks.conf ~/linux-dotfiles/i3 && echo "Copied i3blocks.conf to ~/linux-dotfiles" || echo "failed to move i3blocks.conf to linux-dotfiles"
	
elif [ "$OPTION" = "6" ];
then
	sudo cp ~/.config/neofetch/config.conf ~/linux-dotfiles/neofetch && echo "Copied neofetch config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles"
	
elif [ "$OPTION" = "7" ];
then
	sudo cp ~/.config/zathura/zathurarc ~/linux-dotfiles/zathura && echo "Copied zathura config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles"
	
elif [ "$OPTION" = "8" ];
then
	sudo cp ~/.config/picom/picom.conf ~/linux-dotfiles/picom && echo "Copied picom config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles"
	
elif [ "$OPTION" = "9" ];
then
	sudo cp ~/.config/nvim/UltiSnips/tex.snippets ~/linux-dotfiles/latex && echo "Copied latex config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles"
	
elif [ "$OPTION" = "10" ];
then
	sudo cp ~/.config/alacritty/alacritty.yml ~/linux-dotfiles/alacritty && echo "Copied alacritty config to ~/linux-dotfiles/alacritty" || echo "failed to move config to linux-dotfiles"
	
elif [ "$OPTION" = "11" ];
then
	sudo git -C ~/linux-dotfiles add . && sudo git -C ~/linux-dotfiles commit -m "changes" && git -C ~/linux-dotfiles push && echo "Pushed changes to github repository Successfully" || echo "Failed to Push changes to github repository"

elif [ "$OPTION" = "12" ];
then
	sudo cp ~/.config/fish/config.fish ~/linux-dotfiles/fish && echo "Copied Fish Config to ~/linux-dotfiles/fish" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/kitty/kitty.conf ~/linux-dotfiles/kitty && echo "Copied Kitty Config to ~/linux-dotfiles/kitty" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/termite/config ~/linux-dotfiles/termite\ configs && echo "copied termite config to ~/linux-dotfiles/termite" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/nvim/init.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (init.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (init.lua) to linux-dotfiles";
	sudo cp ~/.config/nvim/lua/core/mappings.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (mappings.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (mappings.lua) to linux-dotfiles";
	sudo cp ~/.config/nvim/lua/core/plugins.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (plugins.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (plugins.lua) to linux-dotfiles";
	sudo cp ~/.config/nvim/lua/core/options.lua ~/linux-dotfiles/astrovim/ && echo "Copied neovim config (options.lua) to ~/linux-dotfiles/astrovim " || echo "falied to move config (options.lua) to linux-dotfiles";
	sudo cp ~/.config/i3/config ~/linux-dotfiles/i3 && echo "Copied i3 config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/i3/i3blocks.conf ~/linux-dotfiles/i3 && echo "Copied i3blocks.conf to ~/linux-dotfiles" || echo "failed to move i3blocks.conf to linux-dotfiles";
	sudo cp ~/.config/neofetch/config.conf ~/linux-dotfiles/neofetch && echo "Copied neofetch config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/zathura/zathurarc ~/linux-dotfiles/zathura && echo "Copied zathura config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/picom/picom.conf ~/linux-dotfiles/picom && echo "Copied picom config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/nvim/UltiSnips/tex.snippets ~/linux-dotfiles/latex && echo "Copied latex config to ~/linux-dotfiles" || echo "failed to move config to linux-dotfiles";
	sudo cp ~/.config/alacritty/alacritty.yml ~/linux-dotfiles/alacritty && echo "Copied alacritty config to ~/linux-dotfiles/alacritty" || echo "failed to move config to linux-dotfiles";

else
	echo "Invalid Option"
fi

echo "Pushing changes to github repository"

sudo git -C ~/linux-dotfiles add . && sudo git -C ~/linux-dotfiles commit -m "changes" && git -C ~/linux-dotfiles push && echo "Pushed changes to github repository Successfully" || echo "Failed to Push changes to github repository"

