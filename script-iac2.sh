#!/bin/bash

echo "Iniciando a execução do script!"
echo "Atualizando o servidor..."
apt-get update 
apt-get upgrade -y

echo "Instalando o apache..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Baixando arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos da aplicação..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim da execução do script!"
