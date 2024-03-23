apt -y purge ntp
timedatectl set-ntp true
systemctl start systemd-timesyncd
exit