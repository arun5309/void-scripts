#!/bin/sh

# umount /mnt/.snapshots
# umount /mnt/var/cache/pacman/pkg
umount /mnt/dev/pts
umount /mnt/dev
umount /mnt/proc
umount /mnt/sys
umount /mnt/var/log
umount /mnt/boot
umount /mnt/home
umount /mnt
lsblk
