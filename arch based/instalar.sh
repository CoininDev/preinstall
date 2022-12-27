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


echo "instalar google chrome? (S/n)"
read instalar_pacote_gaming_true
if [$instalar_pacote_gaming_true != "n"]; then
    cd google-chrome
    makepkg -s
    echo "entre na pasta google-chrome pelo terminal e digite 'sudo pacman -U' e o nome do pacote que termina com '.pkg.tar.xz'"


#snap
cd snapd
makepkg -si
systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd ..

snap_pack='
blender
spotify
discord
code
wps-office-multilang
'

snap install $snap_pack

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
    flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    flatpak --user install flathub com.valvesoftware.Steam
    flatpak install $gaming_pack
    ;;
    
