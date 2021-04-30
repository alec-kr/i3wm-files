#!/bin/bash

# Enter a default bssid here. This will be used if you type "0" in the prompt.
a="default bssid here"

# Read bssid and channel
read -p "Enter BSSID: " bssid
read -p "Enter channel: " channel

# If 0 is entered, use the default bssid
if [ $bssid==0 ]; then
	echo "[/] Using home bssid..."
	bssid=$a
fi

echo "BSSID found: $bssid"

# List devices connected to the router
sudo airodump-ng wlo1mon --bssid $bssid --channel $channel
