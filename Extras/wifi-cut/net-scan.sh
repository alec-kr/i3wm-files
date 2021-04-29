#!/bin/bash
a="default bssid here"

read -p "Enter BSSID: " bssid
read -p "Enter channel: " channel

if [ $bssid==0 ]; then
	echo "[/] Using home bssid..."
	bssid=$a
fi

echo "BSSID found: $bssid"

sudo airodump-ng wlo1mon --bssid $bssid --channel $channel
