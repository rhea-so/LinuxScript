#!/bin/bash
ip=${1}

sudo iptables -D INPUT -i ens3 -p tcp --dport ${ip} -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -D INPUT -i ens3 -p udp --dport ${ip} -m state --state NEW,ESTABLISHED -j ACCEPT

echo IP Closed: ${ip}
