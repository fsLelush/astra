set -euo pipefail
systemctl enable NetworkManager-wait-online.service
cat > /etc/systemd/system/mnt-obmen.mount <<EOF
[Unit] 
Description=Obmen
Requires=network-online.target 
After=gdm.service 
[Mount] 
What=//<IP>/<RESOURCE>
Where=/mnt/obmen
Type=cifs 
Options=rw,uid=user,gid=users,user=<USERNAME>,password=<PASS>
[Install]
WantedBy=multi-user.target
EOF
systemctl enable mnt-obmen.mount
mkdir -p /mnt/obmen && chmod 777 /mnt/obmen
chmod u+s /usr/sbin/mount.cifs
systemctl daemon-reload
systemctl start mnt-obmen.mount
./Scripts/Share/lnk.sh
exit