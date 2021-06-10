#!/bin/bash
sudo apt-get update
sudo apt-get install wireguard -y
sleep 10
git clone https://www.github.com/naresh219/vpn
cp ~/vpn/wg0.conf /etc/wireguard/
systemctl start wg-quick@wg0
systemctl enable wg-quick@wg0
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.forwarding=1" >> /etc/sysctl.conf
sysctl -p
