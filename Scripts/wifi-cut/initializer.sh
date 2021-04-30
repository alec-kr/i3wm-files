#!/bin/sh
# NOTE: Replace wlo1 and wlo1mon with your wifi card's name


# Put the network card in monitor mode
sudo airmon-ng start wlo1 # to exit this mode, run sudo airmon-ng stop "wifi-card name"

# List routers available
sudo airodump-ng wlo1mon
