#!/bin/bash

#Creation de la premier partion(sdx1)
sudo fdisk /dev/sdb <<partion
n
p
1


p
w
partion

#Creation de la premier partion(sdx1)
sudo fdisk /dev/sdc <<partion
n
p
1


p
w
partion

#Creation de la premier partion(sdx1)
sudo fdisk /dev/sdd <<partion
n
p
1


p
w
partion

#Creation de la premier partion(sdx1)
sudo fdisk /dev/sde <<partion
n
p
1


p
w
partion

#Creation de la premier partion(sdx1)
sudo fdisk /dev/sdf <<partion
n
p
1


p
w
partion
