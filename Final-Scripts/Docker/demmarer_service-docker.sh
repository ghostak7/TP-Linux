#!/bin/bash


if [ -e rm /var/run/docker.pid ]
then
	rm /var/run/docker.pid
else
	echo "Pas besoin de supprimer docker.pid next "
fi
dockerd
docker-compose -f docker-compose-final.yml up
