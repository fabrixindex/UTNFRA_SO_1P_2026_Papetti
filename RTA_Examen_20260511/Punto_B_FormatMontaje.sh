#!/bin/bash

DISCO=$(sudo fdisk -l | grep "8 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

sudo fdisk -l $DISCO | grep Linux | awk '{print "sudo mkfs.ext4 " $1}' | /bin/bash

sudo mount ${DISCO}1 $HOME/Astronomia/Planeta/Gravedad
sudo mount ${DISCO}2 $HOME/Astronomia/Planeta/Orbita

sudo mount ${DISCO}5 $HOME/Astronomia/Cometa/Cola
sudo mount ${DISCO}6 $HOME/Astronomia/Cometa/Gravedad
sudo mount ${DISCO}7 $HOME/Astronomia/Cometa/Orbita

