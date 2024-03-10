#!/bin/sh

sudo cp /home/arun/programs/misc/hosts/default_hosts /etc/hosts
sudo sv restart connmand
