#!/bin/bash

sudo groupadd p1c1_2026_g1
sudo groupadd p1c1_2026_gTodos

MIUSUARIO=$(whoami)

HASH=$(sudo grep $MIUSUARIO /etc/shadow | awk -F ':' '{print $2}')

sudo useradd -m -s /bin/bash -G p1c1_2026_g1 -p "$HASH" p1c1_2026_u1

sudo useradd -m -s /bin/bash -G p1c1_2026_g1 -p "$HASH" p1c1_2026_u2

sudo useradd -m -s /bin/bash -G p1c1_2026_gTodos -p "$HASH" p1c1_2026_u3
