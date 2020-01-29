#!/bin/bash

#Supression de la premier partion(sdb1) du disque sdb 
sudo fdisk /dev/sdb <<partiion1
d
p
w
partiion1

#Supression de la premier partion(sdc1) du disque sdc
sudo fdisk /dev/sdc <<partion1
d
p
w
partion1

#Supression de la premier partion(sdd1) du disque sdd
sudo fdisk /dev/sdd <<partion1
d
p
w
partion1

#Supression de la premier partion(sde1) du disque sde
sudo fdisk /dev/sde <<partion1
d
p
w
partion1

#Supression de la premier partion(sdf1) du disque sdf
sudo fdisk /dev/sdf <<partion1
d
p
w
partion1
