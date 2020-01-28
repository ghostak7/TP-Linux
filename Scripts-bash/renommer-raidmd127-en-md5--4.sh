#!bin/bash

mdadm -Ss
mdadm -A /dev/md5 /dev/sd[bcdef]1
mdadm --detail --scan >> /etc/mdadm/mdadm.conf
update-initramfs -v -u
