#!/bin/bash

ip=$1

usuario=$2

ruta=$3

scp $usuario@$ip:~/$ruta ~/Desktop/scripts/paginapivote/index.html

sudo rm  /var/www/html/index.html

sudo cp /home/pi/Desktop/scripts/paginapivote/index.html

echo "Index del servidor apache cambiado"
