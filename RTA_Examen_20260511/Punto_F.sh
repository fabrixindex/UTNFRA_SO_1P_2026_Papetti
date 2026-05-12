#!/bin/bash

mkdir -p $HOME/Punto_F

grep MemTotal /proc/meminfo > $HOME/Punto_F/Filtro_basico.txt

grep "brand_string" $HOME/carpeta_compartida/cpuinfo_MacOS >> $HOME/Punto_F/Filtro_basico.txt

grep "hw.tbfrequency" $HOME/carpeta_compartida/cpuinfo_MacOS2 >> $HOME/Punto_F/Filtro_basico.txt

