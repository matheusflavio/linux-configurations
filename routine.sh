find -name .git -print -execdir git pull \;
sudo apt update -y
sudo apt upgrade -y
sudo apt install --fix-missing -y
sudo apt remove --autoremove -y
sudo apt autoremove --purge -y
sudo apt autoclean -y
sudo apt clean -y
exit