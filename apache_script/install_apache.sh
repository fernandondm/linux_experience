#!/bin/bash

echo "Instalando APACHE"

apt update && upgrade
apt install apache2 unzip -y

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
mv main.zip /tmp
unzip /tmp/main.zip -d /tmp

mv -f /tmp/*main/* /var/www/html

echo "Finalizado!"
