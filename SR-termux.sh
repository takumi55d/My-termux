#!bin/bash
#update and upgrade
pkg update
pkg install x11-repo root-repo tur-repo -y
pkg upgrade -y
# fixing the config
cd
cd ..
rm usr/etc/motd
curl -O https://raw.githubusercontent.com/takumi55d/My-termux/main/termux-conf.zip
rm -r .bash_history .config .cache
unzip termux-conf.zip
#install python and lolcat
pkg install python -y
pip install lolcat
#install other tools 
pkg install micro starship figlet fish eza proot-distro -y
#pd install archlinux
chsh -s fish
