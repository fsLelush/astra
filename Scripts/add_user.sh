useradd -m -N -g users -G video,plugdev,floppy,dialout,cdrom,audio -s /bin/bash user
echo "user:12345678" | chpasswd
exit