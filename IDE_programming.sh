#!/bin/bash
#-*- ENCONDING: UTF-8 -*-
#instalacion de IDE para diferentes lenguajes y algunos complementos

sudo pacman -S netbeans
sudo pacman -S intellij-idea-community-edition
sudo pacman -S pycharm-community-edition
sudo pacman -S mariadb
sudo pacman -S mysql-workbench
#Configuracion de mysql y mariadb
systemctl start mariadb
systemctl start mysql
systemctl enable mariadb
systemctl enable mysql
#intalacion de sublimetext
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text

