#!/bin/bash

#création du volume /dev/md5
mdadm --create /dev/md5 --level=5 --raid-devices=5 /dev/sd[bcdef]1

#permet de monter le volume au redemarage
mdadm --daemonise /dev/md5

#Création du systeme de fichier dans ce volume
mkfs -t ext4 /dev/md5

#création du dossier /data(s'il existe pas) ou va être monter ce volume + montage
if [ -d "/data" ];then
mount /dev/md5 /data;
else
mkdir /data
mount /dev/md5 /data
fi

#vérification du volume
cat /proc/mdstat


