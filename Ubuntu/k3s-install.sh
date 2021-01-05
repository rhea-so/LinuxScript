# curl -sfL https://get.k3s.io | sh -

# oracle cloud에서 iptables break issue 발생
sudo iptables -I INPUT 3 -s 10.42.0.0/16 -j ACCEPT
sudo iptables -I INPUT 3 -d 10.42.0.0/16 -j ACCEPT
# https://github.com/k3s-io/k3s/issues/977
