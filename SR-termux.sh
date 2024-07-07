#!bin/bash
# update and upgrade
pkg update
pkg install x11-repo root-repo tur-repo -y
pkg upgrade -y

# install the tools 
pkg install micro starship figlet fish eza proot-distro python -y
#install lolcat
pip install lolcat

# pd install archlinux

# fixing the config and changing shell to fish 
cd ~
cd ..
rm usr/etc/motd
cd
rm -r .*
curl -O https://raw.githubusercontent.com/takumi55d/My-termux/main/termux-conf.zip
unzip termux-conf.zip
chsh -s fish
