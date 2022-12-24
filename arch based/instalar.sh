#!/bin/sh

#pacotes

#pacman
pacman_pack='
cmatrix
neofetch
lolcat
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
echo "instalar flameshot? (N/s):"
read instalar_flameshot_true
if [$instalar_flameshot_true = "s"]; then
    snap install flameshot


#gaming pack
gaming_pack='
wine-stable
lutris
./heroic_2.5.2_amd64.deb
'


#TO_DO INSTALAR FLATPAK


echo "instalar pacote gaming? (S/n):"
read instalar_pacote_gaming_true
if [$instalar_pacote_gaming_true != "n"]; then
    flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    flatpak --user install flathub com.valvesoftware.Steam
    apt install $gaming_pack -y