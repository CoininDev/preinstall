#!/bin/sh

#pacotes

#apt
apt_pack='
steam
winehq-stable
lutris
cmatrix
neofetch
'

add-apt-repository multiverse
add-apt-repository ppa:lutris-team/lutris

apt install $apt_pack -y


#snap
apt install snapd -y

snap_pack='
blender
spotify
discord
code
wps-office-multilang
'

snap install $snap_pack -y


snap install flameshot