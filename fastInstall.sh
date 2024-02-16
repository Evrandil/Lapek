#!/bin/bash



# Pacman {{{

sudo pacman -S --needed --noconfirm --disable-download-timeout base-devel julia php go cairo curl calc p7zip sed tldr fd ripgrep fzf vim neovim neofetch ranger hyprland kitty hyprpaper obsidian powerline-fonts bluez bluez-utils signal-desktop telegram-desktop discord pipewire wireplumber spotifyd easyeffects chromium btop grim slurp calcurse testdisk gtk-layer-shell rustup
# sudo pacman -S bc brainfuck
rustup default stable

# }}}



# Git {{{

cd ~/.config
rm nvim -rf
git clone https://github.com/Evrandil/nvim
cd /usr/share
sudo mkdir User
sudo chown evrandil User
cd User
mkdir Memes
mkdir Browser
cd Browser
git clone https://github.com/Evrandil/HomePage

cd ~/gitTrash
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
git clone --recursive https://github.com/andresgongora/synth-shell.git
cd synth-shell
./setup.sh
cd ../Lapek
rm ~/.config/synth-shell -rf
mv after/synth-shell ~/.config
rm after -rf
git clone https://github.com/Elkowar/eww
cd eww
cargo build --release --no-default-features --features=wayland
sudo cp target/release/eww /bin
cd ../Lapek
mv .config/eww ~/.config

# }}}



# Paru {{{

paru -S hyprshot tofi messenger-nativefier whatsapp-for-linux spotify-tui disneyplus netflix

# }}}



# Local files {{{

rm Wlan.md
rm README.md
mv .bashrc ~
rm .git -rf
rm install.sh

p7 x FiraCode.zip -oFiraCode
rm FiraCode.zip
sudo mv FiraCode /usr/share/fonts

rm ~/.config/kitty -rf
mv .config/kitty ~/.config
rm ~/.config/btop -rf
mv .config/btop ~/.config/btop
rm ~/.config/neofetch -rf
mv .config/neofetch ~/.config
rm ~/.config/ranger -rf
mv .config/ranger ~/.config
rm ~/.config/hypr -rf
mv .config/hypr ~/.config
rm ~/.config/tofi -rf
mv .config/tofi ~/.config
rm ~/.config/spotifyd -rf
mv .config/spotifyd ~/.config
rm ~/.config/easyeffects -rf
mv .config/easyeffects ~/.config
rm ~/.config/spotify-tui -rf
mv .config/spotify-tui ~/.config

cd ~
mv ~/gitTrash/Lapek/Gigachad .
cat Gigachad/gigachad.txt
echo "Remember to log into Discord, Signal, Telegram, Disney+, Netfix, Messenger & Whatsapp accounts"

# }}}

