#!/bin/sh

#pacotes

#apt
apt_pack='
cmatrix
neofetch
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
read -r -p "instalar flameshot? [s/N] " instalar_flameshot_resposta
case $instalar_flameshot_resposta in
    [sS]) 
        snap install flameshot
        ;;
    *)
    	echo "flameshot pulado."
        ;;
esac

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
	apt install $gaming_pack -y
	;;
esac

echo "tudo pronto! :)"
