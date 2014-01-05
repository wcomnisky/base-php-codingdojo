#!/bin/bash

# Lista de pacotes e configs necessárias requisitos
# Comandos originais baseados no repositório do wcomnisky
# https://github.com/wcomnisky/base-php-codingdojo#instala%C3%A7%C3%A3o-dos-requisitos-no-ubuntu-1204-precise-pangolin
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install python-software-properties -y
add-apt-repository -y ppa:ondrej/php5 && apt-get -y update
apt-get -y install php5 php5-cli php5-xdebug php-pear -y --force-yes
pear update-channels && sudo pear upgrade pear
pear config-set auto_discover 1
pear install pear.phpunit.de/PHPUnit
