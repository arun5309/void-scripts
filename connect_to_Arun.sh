#!/bin/sh

sudo rfkill block wlan
sudo rfkill unblock wlan
sudo iwctl station wlp2s0 scan
sudo iwctl station wlp2s0 get-networks
sudo iwctl station wlp2s0 connect Arun --passphrase cgnu2815
# sudo dhcpcd
