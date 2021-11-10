#! /bin/bash

IP=$(curl -4 -sf ifconfig.co --silent  --stderr - | grep -oE "([0-9]{1,3}\.){3}([0-9]{1,3})")
echo "Executed" > /tmp/E

if pgrep -x openvpn > /dev/null; then
	echo "  VPN: $(ifconfig tun0 | grep "inet " | awk '{print $2}')"
    else
	        echo "" > /tmp/E & echo " $IP"
fi
