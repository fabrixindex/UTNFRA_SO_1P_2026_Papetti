#!/bin/bash

sudo mkdir -p /Punto_D/{Libros,Musica,videos}

sudo touch /Punto_D/{Libros,Musica,videos}/elemento

whoami | sudo tee /Punto_D/*/elemento > /dev/null
