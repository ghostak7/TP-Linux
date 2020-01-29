#!/bin/bash

#mdadm -Ss
mdadm -A /dev/md5 /dev/sd[bcdef]1
chmod 777 /etc/mdadm/mdadm.conf
mdadm --detail --scan >> /etc/mdadm/mdadm.conf
update-initramfs -v -u
