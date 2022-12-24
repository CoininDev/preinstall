#!/bin/sh

#pacotes

#apt
apt_pack='
cmatrix
neofetch
lolcat
./google-chrome-stable_current_amd64.deb
'


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

snap install $snap_pack

#flameshot
echo "instalar flameshot? (N/s):"
read instalar_flameshot_true
if [$instalar_flameshot_true = "s"]; then
    snap install flameshot


#gaming pack
gaming_pack='
steam
wine-stable
lutris
./heroic_2.5.2_amd64.deb
'
echo "instalar pacote gaming? (S/n):"
read instalar_pacote_gaming_true
if [$instalar_pacote_gaming_true != "n"]; then
    add-apt-repository multiverse
    add-apt-repository ppa:lutris-team/lutris
    apt install $gaming_pack -y