#!/bin/bash

mkdir -p $HOME/Punto_G

IP=$(curl -s ifconfig.me)

CPU=$(grep "brand_string" $HOME/carpeta_compartida/cpuinfo_MacOS | awk -F ': ' '{print $2}')

FREC=$(grep "frequency" $HOME/carpeta_compartida/cpuinfo_MacOS2 | head -1 | awk -F ': ' '{print $2}')

echo "Mi IP publica es: $IP" > $HOME/Punto_G/Filtro_Avanzado.txt

echo "CPU Modelo: $CPU Frecuencia: $FREC" >> $HOME/Punto_G/Filtro_Avanzado.txt
