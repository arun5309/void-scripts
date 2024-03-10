#!/bin/sh

sudo cp /etc/hosts.backup /etc/hosts
sudo sv restart connmand
