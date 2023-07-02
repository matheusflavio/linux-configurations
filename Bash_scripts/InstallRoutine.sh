#bin/bash

echo "Updating"
sudo apt update
echo "Upgrading"
sudo apt upgrade
echo "Downloading autokey"
sudo apt install autokey-gtk
echo "Downloading Discord"
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
echo "Downloading Opera"
wget "https://download.opera.com/download/get/?id=61379&location=424&nothanks=yes&sub=marine&utm_tryagain=yes" -O opera.deb
sudo apt install opera.deb



sudo apt update
sudo apt upgrade