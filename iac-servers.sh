#!/bin/bash

echo "Iniciando atualização de sistema..."
apt-get update
echo "Atualização finalizada!!"

echo "Iniciando downloand do apache..."
apt-get install apache2 -y
echo "Instalação concluída!!"

echo "Iniciando download do unzip..."
apt-get install unzip -y
echo "Instalação concluída!!"

echo "Iniciando download do arquivo no github..."
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Download concluído..."

unzip '/tmp/*.zip' -d /var/www/html

mv /var/www/html/linux-site-dio-main/* /var/www/html 
rm /var/www/html/linux-site-dio-main
