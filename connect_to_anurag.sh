#!/bin/sh

sudo rfkill block wlan
sudo rfkill unblock wlan
sudo iwctl station wlp2s0 scan
sudo iwctl station wlp2s0 get-networks
sudo iwctl station wlp2s0 connect "Anurag Hotspot" --passphrase 12345678
# sudo dhcpcd
