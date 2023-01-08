#!/bin/sh

#pacotes

#pacman
pacman_pack='
cmatrix
neofetch
lolcat
flatpak
'


pacman -S $pacman_pack
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


echo "instalar google chrome? (S/n)"
read instalar_pacote_gaming_true
if [$instalar_pacote_gaming_true != "n"]; then
    cd google-chrome
    makepkg -s
    echo "entre na pasta google-chrome pelo terminal e digite 'sudo pacman -U' e o nome do pacote que termina com '.pkg.tar.xz'"



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

#gaming pack
gaming_pack='
wine-stable
lutris
./heroic_2.5.2_amd64.deb
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
    
