#!/bin/bash
echo "-------"
echo "INSTALLING I3 AND NECESSARY PACKAGES"
echo "-------"
sudo zypper install i3 i3status i3lock dmenu gtk-doc gobject-introspection dh-autoreconf autoconf lxappearance automake libtool glib2-devel feh arandr rofi compton gtk-chtheme libnotify4 wget unzip
echo "-------"
echo "Installing Playerctl"
echo "-------"
wget http://github.com/acrisci/playerctl/archive/master.zip
unzip master.zip
cd playerctl-master
./autogen.sh
make
sudo make install
notify-send "i3 installation complete"
echo "-------"
echo "End"
echo "-------"
