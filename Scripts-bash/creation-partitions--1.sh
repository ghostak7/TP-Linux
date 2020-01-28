#!/bin/bash

#Creation de la premier partion(sdb1) du disque sdb 
sudo fdisk /dev/sdb <<partion1
n
p
1


p
w
partion1

#Creation de la premier partion(sdc1) du disque sdc 
sudo fdisk /dev/sdc <<partion2
n
p
1


p
w
partion2

#Creation de la premier partion(sdd1) du disque sdd
sudo fdisk /dev/sdd <<partion3
n
p
1


p
w
partion3

#Creation de la premier partion(sde1) du disque sde
sudo fdisk /dev/sde <<partion4
n
p
1


p
w
partion4

#Creation de la premier partion(sdf1) du disque sdf
sudo fdisk /dev/sdf <<partion5
n
p
1


p
w
partion5

