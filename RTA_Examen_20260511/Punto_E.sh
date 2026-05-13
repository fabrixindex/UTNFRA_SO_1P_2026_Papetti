#!/bin/bash

sudo chown -R p1c1_2026_u1:p1c1_2026_gTodos /Punto_D/Libros

sudo chown -R p1c1_2026_u2:p1c1_2026_gTodos /Punto_D/Musica

sudo chown -R p1c1_2026_u3:p1c1_2026_gTodos /Punto_D/videos

# Libros
sudo chmod 710 /Punto_D/Libros

# Musica
sudo chmod 745 /Punto_D/Musica

# videos
sudo chmod 775 /Punto_D/videos

#TEST

echo
echo "========== TEST LIBROS =========="

sudo su - p1c1_2026_u2 -c "ls /Punto_D/Libros"
sudo su - p1c1_2026_u2 -c "cat /Punto_D/Libros/elemento"
sudo su - p1c1_2026_u2 -c "echo test >> /Punto_D/Libros/elemento"

echo
echo "========== TEST MUSICA =========="

sudo su - p1c1_2026_u1 -c "ls /Punto_D/Musica"
sudo su - p1c1_2026_u1 -c "cat /Punto_D/Musica/elemento"
sudo su - p1c1_2026_u1 -c "echo test >> /Punto_D/Musica/elemento"

echo
echo "========== TEST VIDEOS =========="

sudo su - p1c1_2026_u2 -c "ls /Punto_D/videos"
sudo su - p1c1_2026_u2 -c "cat /Punto_D/videos/elemento"
sudo su - p1c1_2026_u2 -c "echo test >> /Punto_D/videos/elemento"

