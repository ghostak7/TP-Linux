#!/bin/bash

#
./Partition/creation-partitions--1.sh
./Partition/creation-system-fichier-ext4--2.sh

#
./Raid5/creation-volume-md5--3.sh

#
./Lvm/creation-lvm--4.sh

#
./Docker/install_docker.sh
./Docker/demmarer_service-docker.sh


#
./Raid5/sscript-mail


