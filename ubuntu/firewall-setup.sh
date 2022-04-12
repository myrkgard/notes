#!/bin/bash

iptables -F
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p tcp --dport 52342 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -j DROP
/sbin/iptables-save
reboot
