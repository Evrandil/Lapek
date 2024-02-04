#!/bin/bash

mv .config/* ~/.config
mkdir ~/gitTrash
mv FiraCode.zip ~/gitTrash
cd ~/gitTrash
p7 x FiraCode.zip -oFiraCode
sudo mv FiraCode /usr/share/fonts
sudo pacman -Syu
sudo pacman -S hyprpaper vim neovim ranger neofetch easyeffects chroumium obsidian spotifyd powerline-fonts wireplumber discord p7zip
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
git clone --recursive https://github.com/andresgongora/synth-shell.git
cd synth-shell
./setup.sh
cd ..
paru -S spotify-tui
sudo pacman -S signal-desktop telegram-desktop
paru -S disneyplus
paru -S messenger-nativefier
paru -S whatsapp-for-linux

