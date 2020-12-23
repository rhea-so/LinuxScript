#!/bin/bash
ip=${1}

sudo iptables -I INPUT 5 -i ens3 -p tcp --dport ${ip} -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -I INPUT 5 -i ens3 -p udp --dport ${ip} -m state --state NEW,ESTABLISHED -j ACCEPT
echo IP Opened: ${ip}
