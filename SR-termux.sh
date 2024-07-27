#!bin/bash

# update and upgrade
pkg update
pkg install x11-repo root-repo tur-repo -y
pkg upgrade

# install the tools 
pkg install micro starship figlet fish eza proot-distro python vim nerdfix -y

#install lolcat
pip install lolcat

# pd install archlinux

# fixing the config and changing shell to fish 
cd ..
rm usr/etc/motd
cd ~
rm -rf ~/.*
curl -O https://raw.githubusercontent.com/takumi55d/My-termux/main/termux-conf.zip
unzip termux-conf.zip
chsh -s fish
rm termux-conf.zip 

# getting 3D figlet font
cd ~
curl -O https://raw.githubusercontent.com/xero/figlet-fonts/master/3d.flf
mv 3d.flf 3D_figlet_font.flf
mkdir ~/.local/font/
mv 3D_figlet_font.flf ~/.local/font/

exec fish
