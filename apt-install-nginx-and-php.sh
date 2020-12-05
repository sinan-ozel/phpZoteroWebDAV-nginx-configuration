#!/usr/bin/env bash

sudo apt update
sudo apt upgrade
sudo apt install nginx-full -y
sudo apt install php7.0 libapache2-mod_php7.0 apache2-mod_php7.0 php7.0-mysql php7.0-mbstring php7.0-common php7.0-xml php7.0-json php7.0-curl php7.0-zip php7.0-xml -y
