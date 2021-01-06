sudo curl https://releases.rancher.com/install-docker/19.03.sh | sh

sudo curl -o k3s.sh https://get.k3s.io

chmod +x ./k3s.sh

sudo ./k3s.sh --docker --no-deploy=metrics-server --no-deploy=local-storage --no-deploy=coredns --no-deploy=traefik --disable-cloud-controller

# oracle cloud에서 iptables break issue 발생
sudo iptables -I INPUT 3 -s 10.42.0.0/16 -j ACCEPT
sudo iptables -I INPUT 3 -d 10.42.0.0/16 -j ACCEPT
# https://github.com/k3s-io/k3s/issues/977
