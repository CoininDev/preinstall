#!/bin/sh

#pacotes

#pacman
pacman_pack='
cmatrix
neofetch
lolcat
flatpak
jdk8-openjdk
jre8-openjdk
jre8-openjdk-headless
git
'

pacman -Suuy
pacman -S $pacman_pack
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo



#read -r -p "instalar google chrome? (S/n)" instalar_google_chrome
#case $instalar_google_chrome in
#	[nN])
#	echo "google chrome pulado."
#	;;
#
#	*)
#    git clone https://aur.archlinux.org/google-chrome.git
#    cd google-chrome
#    makepkg -si



#flats
flat_pack='
org.blender.Blender
com.spotify.Client
com.discordapp.Discord
com.visualstudio.code
org.onlyoffice.desktopeditors
sh.ppy.osu
'

flatpak install flathub $flat_pack

#flameshot
read -r -p "instalar flameshot? (N/s):" instalar_flameshot
case $instalar_flameshot in
    [sS])
    snap install flameshot
    ;;
    
    *)
    echo "flameshot pulado."
    ;;
esac

gaming_pack='
wine-stable
lutris
'


read -r -p "instalar pacote gaming? (S/n):" instalar_pac_gaming
case $instalar_pac_gaming in 
    [nN])
    echo "pacote gaming pulado."
    ;;
    
    *)
    flatpak --user install flathub com.valvesoftware.Steam
    flatpak install $gaming_pack
    ;;
esac

echo "tudo pronto :)"
