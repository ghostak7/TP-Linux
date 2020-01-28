#!bin/bash

#création du volume /dev/md5
#mdadm -C /dev/md5 -n 5 -l raid5 /dev/sd[bcdef]1
mdadm --create /dev/md5 --level=5 --raid-devices=5 /dev/sd[bcdef]1

#permet de monter le volume au redemarage
mdadm --daemonise /dev/md5

#Création du systeme de fichier dans ce volume
mkfs -t ext4 /dev/md5

#création du fichier /data ou va être monter ce volume
#mkdir /data

#montage du volume /dev/md5 dans /data
mount /dev/md5 /data

#vérification du volume
cat /proc/mdstat


