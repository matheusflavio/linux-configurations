#bin/bash

echo "Updating"
sudo apt update
echo "Upgrading"
sudo apt upgrade
echo "Downloading Omni Theme Terminal"
git clone https://github.com/getomni/gnome-terminal.git
cd gnome-terminal
./install.sh
cd ..
echo "Downloading Omni Theme ULauncher"
git clone https://github.com/getomni/ulauncher.git ~/.config/ulauncher/user-themes/omni-ulauncher
echo "Downloading autokey"
sudo apt install autokey-gtk
echo "Downloading OBS"
sudo apt install obs-studio
echo "Downloading touchpad-indicator"
sudo add-apt-repository ppa:atareao/atareao
sudo apt update
sudo apt install touchpad-indicator
echo "Downloading GIMP"
sudo apt install gimp
echo "Downloading zsh"
sudo apt install zsh -y
echo "Downloading Spotify"
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client
echo "Downloading Plank"
sudo apt install plank
echo "Downloading Filezilla"
sudo add-apt-repository ppa:sicklylife/filezilla
sudo apt update
sudo apt install filezilla
echo "Downloading CoBang"
sudo add-apt-repository ppa:ng-hong-quan/ppa
sudo apt update
sudo apt install cobang
echo "Installing build-essential"
sudo apt install build-essential


echo "Downloadign qbittorrent"
wget "https://www.fosshub.com/qBittorrent.html?dwl=qbittorrent-4.4.5_x86_64.AppImage" -O qbittorrent.AppImage


echo "Downloading VSCode"
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O vscode.deb
sudo dpkg -i vscode.deb
echo "Downloading Telegram"
wget "https://telegram.org/dl/desktop/linux" -O telegram.deb
sudo dpkg -i telegram.deb
echo "Downloading TeamViewer"
wget "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb" -O teamviewer.deb
sudo dpkg -i teamviewer.deb
echo "Downloading ULauncher"
wget "https://github.com/Ulauncher/Ulauncher/releases/download/5.15.0/ulauncher_5.15.0_all.deb" -O ulauncher.deb
sudo dpkg -i ulauncher.deb
echo "Downloading Hyper"
wget "https://releases.hyper.is/download/deb" -O hyper.deb
sudo dpkg -i hyper.deb
echo "Downloading Discord"
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
echo "Downloading Chrome"
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -O chrome.deb
sudo dpkg -i chrome.deb
echo "Downloading Steam"
wget "https://cdn.akamai.steamstatic.com/client/installer/steam.deb" -O steam.deb
sudo dpkg -i steam.deb
echo "Downloading MS Teams"
wget "https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x416&culture=pt-br&country=BR" -O teams.deb
sudo dpkg -i teams.deb
echo "Downloading Iriun WebCam"
wget "https://iriun.gitlab.io/iriunwebcam-2.7.deb" -O iriun.deb
sudo dpkg -i iriun.deb


echo "Uninstalling Firefox"
sudo apt purge Firefox
sudo apt remove --autoremove
sudo apt autoremove --purge

sudo apt update
sudo apt upgrade
sudo apt remove --autoremove
sudo apt install --fix-missing