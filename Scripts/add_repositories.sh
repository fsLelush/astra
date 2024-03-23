sed -i 's/deb c/#deb c/' /etc/apt/sources.list
sed -i 's/#deb h/deb h/' /etc/apt/sources.list
sed -i '9 s/deb /#deb /' /etc/apt/sources.list
apt -y update && apt-get -y dist-upgrade
exit