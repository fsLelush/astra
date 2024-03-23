x11vnc -storepasswd "1122" /etc/vncpasswd
cat > /lib/systemd/system/x11vnc.service <<EOF
[Unit]
Description=Start x11vnc at startup.
Reqires=display-manager.service
After=display-manager.service
[Service]
Type=simple
Restart=on-failure
ExecStart=/usr/bin/x11vnc --reopen -capslock -auth guess -display WAIT:0 -usepw -forever -rfbport 5900 -shared -rfbauth /etc/vncpasswd
[Install]
WantedBy=multi-user.target
EOF
systemctl enable x11vnc.service
systemctl daemon-reload
systemctl start x11vnc.service
exit
