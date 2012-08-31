Base PHP Coding Dojo
====================

Projeto simples (indepentende de bibliotecas e/ou frameworks), para ser facilmente utilizado em coding dojos de PHP 5.4 (e superiores). Caso disponha apenas do PHP 5.3(.x), utilize o seguinte bootstrap: https://gist.github.com/3082983.

## Requisitos
* PHP 5.4 ou superior;
* PHPUnit 3.6 ou superior;

### Instalação dos requisitos no Ubuntu 12.04 (Precise Pangolin)
    sudo add-apt-repository ppa:ondrej/php5 && sudo apt-get update
    sudo apt-get install php5 php5-cli php5-xdebug php-pear
    sudo pear update-channels && sudo pear upgrade pear
    sudo pear config-set auto_discover 1
    sudo pear install pear.phpunit.de/PHPUnit
    
## Baixando os fontes

### Git
    git clone http://github.com/wcomnisky/base-php-codingdojo.git
    
### Download:
* Zip: https://github.com/wcomnisky/base-php-codingdojo/zipball/master
* Tar.gz: https://github.com/wcomnisky/base-php-codingdojo/tarball/master

## E depois de baixar os fontes?
    cd ./base-php-codingdojo/Tests
    phpunit

Refatore, e repita o passo anterior...