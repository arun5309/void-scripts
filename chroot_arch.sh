#!/bin/sh

mount -o subvol=@ /dev/sdb2 /mnt
mount -o subvol=@home /dev/sdb2 /mnt/home
mount -o subvol=@pkg /dev/sdb2 /mnt/var/cache/pacman/pkg
mount -o subvol=@log /dev/sdb2 /mnt/var/log
mount -o subvol=@snapshots /dev/sdb2 /mnt/.snapshots
mount /dev/sdb1 /mnt/boot
mount --bind /dev /mnt/dev
mount --bind /dev/pts /mnt/dev/pts
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys
SHELL=fish chroot /mnt
