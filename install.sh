#!/bin/bash

sudo pacman -Syu
sudo pacman -S hyprpaper vim neovim ranger neofetch easyeffects chroumium obsidian spotifyd powerline-fonts wireplumber discord
sudo pacman -S --needed base-devel
cd ~
mkdir gitTrash
cd gitTrash
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

2 -> install Fira Code Nerd Font
