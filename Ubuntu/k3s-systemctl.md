vim /etc/systemd/system/k3s.service

1. add
Environment=GOGC=10

2. add tag
server / 옆에
server --disable-cloud-controller --disable-agent --no-deploy traefik /

추가

3. systemctl reboot

sudo systemctl daemon-reload

sudo systemctl stop k3s
sudo systemctl start k3s

4. how to disable helm traefik
https://github.com/k3s-io/k3s/issues/1160


