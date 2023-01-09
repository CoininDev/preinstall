#!/bin/sh

#pacotes

#apt
apt_pack='
cmatrix
neofetch
micro
./google-chrome-stable_current_amd64.deb
'


apt install $apt_pack -y


#flatpak
apt install flatpak
apt install gnome-software-plugin-flatpak #plugin para baixar apps pelo gnome-software futuramente
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo #flathub


flat_pack='
org.blender.Blender
com.spotify.Client
com.discordapp.Discord
com.visualstudio.code
org.onlyoffice.desktopeditors
sh.ppy.osu
'

flatpak install flathub $flat_pack

#gaming pack
gaming_pack='
steam
wine-stable
lutris
./heroic_2.5.2_amd64.deb
'

read -r -p "instalar pacote gaming? [S/n] " instalar_pacote_gaming_resposta
case $instalar_pacote_gaming_resposta in
    [nN]) 
        echo "pacote gaming pulado."
        ;;
    *)
	add-apt-repository multiverse
	add-apt-repository ppa:lutris-team/lutris
	apt update
	apt install $gaming_pack -y
	;;
esac

echo "tudo pronto! :) Por favor, reinicie sua máquina para o funcionamento dos apps flatpak."
