#!/bin/bash

# /*===================================
# =            LINUX STUFF            =
# ===================================*/
echo '___________________________________'
echo '___________________________________'
echo '_______Starting Linux Stuff________'
echo '___________________________________'
echo '___________________________________'
sudo apt-get update
sudo apt-get -y install vim
sudo apt-get -y install git
echo '___________________________________'
echo '___________________________________'
echo '_______Linux Stuff COMPLETED_______'
echo '___________________________________'
echo '___________________________________'






# /*==============================
# =            APACHE            =
# ==============================*/
echo '____________________________________'
echo '____________________________________'
echo '_______Starting Apache Stuff________'
echo '____________________________________'
echo '____________________________________'

sudo apt-get -y install apache2

# HTML5 Recommended Apache Settings
sudo a2enmod expires
sudo a2enmod headers
sudo a2enmod include
sudo a2enmod rewrite
echo '____________________________________'
echo '____________________________________'
echo '_______Apache Stuff COMPLETED_______'
echo '____________________________________'
echo '____________________________________'






# /*===================================
# =            INSTALL PHP            =
# ===================================*/
echo '_________________________________'
echo '_________________________________'
echo '_______Starting PHP Stuff________'
echo '_________________________________'
echo '_________________________________'

# Install PHP
sudo apt-get -y install php

# Make PHP and Apache friends
sudo apt-get -y install libapache2-mod-php
sudo service apache2 restart

# PHP Modules: Base Stuff
sudo apt-get -y install php-common
sudo apt-get -y install php-all-dev

# PHP Modules: Common Useful Stuff
sudo apt-get -y install php-mcrypt
sudo apt-get -y install php-zip
echo '_________________________________'
echo '_________________________________'
echo '_______PHP Stuff COMPLETED_______'
echo '_________________________________'
echo '_________________________________'








# /*=============================
# =            MYSQL            =
# =============================*/
echo '__________________________________'
echo '__________________________________'
echo '_______Starting MySQL Stuff_______'
echo '__________________________________'
echo '__________________________________'

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server
sudo mysqladmin -uroot -proot create scotchbox

# Make PHP and MySQL Friends
sudo apt-get -y install php-mysql


# For Good Measure
sudo service apache2 restart
echo '___________________________________'
echo '___________________________________'
echo '_______MySQL Stuff COMPLETED_______'
echo '___________________________________'
echo '___________________________________'





# Big, blank spaces
echo '_________________________________________________'
echo '_________________________________________________'
echo '_________________________________________________'
echo '_________________________________________________'
echo 'Congrats, we are done! You are a hero we deserve.'
echo '_________________________________________________'
echo '_________________________________________________'
echo '_________________________________________________'
echo '_________________________________________________'