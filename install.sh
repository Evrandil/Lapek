#!/bin/bash



# Local files {{{

rm Wlan.md
rm README.md
mv .bashrc ~
rm .git -rf
# mv .config/* ~/.config

# }}}



sudo pacman -Syu	# for updating mirrors & system



# Developer stuff installation {{{



# Paru {{{

sudo pacman -S base-devel git julia php go cairo curl
# sudo pacman -S bc brainfuck
cd ~/gitTrash
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

# }}}



# Useful tools {{{

sudo pacman -S calc p7zip sed tldr fd ripgrep fzf

# }}}



# Synth-shell {{{

sudo pacman -S powerline-fonts
git clone --recursive https://github.com/andresgongora/synth-shell.git
cd synth-shell
./setup.sh
cd ../Lapek
rm ~/.config/synth-shell -rf
mv after/synth-shell ~/.config
rm after -rf

# }}}



# Kitty {{{

sudo pacman -S kitty
cd ~/gitTrash/Lapek
rm ~/.config/kitty -rf
mv .config/kitty ~/.config

# }}}



# Neovim {{{

sudo pacman -S vim neovim
cd ~/.config
git clone https://github.com/Evrandil/nvim

# }}}



# Btop {{{

sudo pacman -S botp
cd ~/gitTrash/Lapek
rm ~/.config/btop -rf
mv .config/btop ~/.config/btop

# }}}



# Fira Code Nerd Font {{{

cd ~/gitTrash/Lapek
p7 x FiraCode.zip -oFiraCode
rm FiraCode.zip
sudo mv FiraCode /usr/share/fonts

# }}}



# Neofetch {{{

sudo pacman -S neofetch
cd ~/gitTrash/Lapek
rm ~/.config/neofetch -rf
mv .config/neofetch ~/.config

# }}}



# Ranger {{{

sudo pacman -S ranger
cd ~/gitTrash/Lapek
rm ~/.config/ranger -rf
mv .config/ranger ~/.config

# }}}



# }}}



# Hypr stuff {{{

sudo pacman -S hyprland hyprpaper
paru -S hyprshot
cd ~/gitTrash/Lapek
rm ~/.config/hypr -rf
mv .config/hypr ~/.config



# Tofi {{{

paru -S tofi
cd ~/gitTrash/Lapek
rm ~/.config/tofi -rf
mv .config/tofi ~/.config

# }}}



# }}}



sudo pacman -S calcurse obsidian bluez bluez-utils	# common stuff



# Comms {{{

sudo pacman -S signal-desktop telegram-desktop discord
paru -S messenger-nativefier
paru -S whatsapp-for-linux

# }}}



# Music {{{

sudo pacman -S pipewire wireplumber spotifyd easyeffects
cd ~/.gitTrash/Lapek
rm ~/.config/spotifyd -rf
mv .config/spotifyd ~/.config
rm ~/.config/easyeffects -rf
mv .config/easyeffects ~/.config
paru -S spotify-tui
rm ~/.config/spotify-tui -rf
mv .config/spotify-tui ~/.config

# }}}



# Videos {{{

paru -S disneyplus netflix

# }}}



# Browser {{{

sudo pacman -S chromium
cd /usr/share
sudo mkdir User
sudo chown evrandil User
cd User
mkdir Memes
mkdir Browser
cd Browser
git clone https://github.com/Evrandil/HomePage

# }}}



cd ~
mv ~/gitTrash/Lapek/Gigachad .
cat Gigachad/gigachad.txt
echo "Remember to log into Discord, Signal, Telegram, Disney+, Netfix, Messenger & Whatsapp accounts"
