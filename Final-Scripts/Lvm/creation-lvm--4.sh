#!/bin/bash

#création des disque physique pour la lvm
pvcreate /dev/md5

#regrouper les 5disques en 1 volume
vgcreate vgraid /dev/md5

#création du volume  logique (Vol-Logique)
lvcreate -n Vol-Logique -l 100%VG vgraid

#Création du point de montage dans /data
if [ -d "/mnt/data" ]
then
	echo "Le répertoire /mnt/data existe déjà!"
else
	echo "Création du répertoire /mnt/data !"
	mkdir /mnt/data
fi

#MKFS system de fichier
mkfs.ext4  -b 4096 /dev/vgraid/Vol-Logique

#mount
mount /dev/vgraid/Vol-Logique /mnt/data

#Montage permanent
echo "/dev/mapper/vgraid-Vol--Logique /mnt/data ext4 rw,relatime,stripe=512 0 0" | sudo tee -a /etc/fstab

#On monte les disques
mount -a
