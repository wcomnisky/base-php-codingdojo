#!/bin/bash

# Lista de pacotes e configs necessárias requisitos
# Comandos originais baseados no repositório do wcomnisky
# https://github.com/wcomnisky/base-php-codingdojo#instala%C3%A7%C3%A3o-dos-requisitos-no-ubuntu-1204-precise-pangolin
sudo apt-get update
sudo apt-get install python-software-properties -y
sudo add-apt-repository -y ppa:ondrej/php5 && sudo apt-get update
sudo apt-get install php5 php5-cli php5-xdebug php-pear -y
sudo pear update-channels && sudo pear upgrade pear
sudo pear config-set auto_discover 1
sudo pear install pear.phpunit.de/PHPUnit
