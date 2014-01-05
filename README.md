Base PHP Coding Dojo with Vagrant
=================================

[![Project Status](http://stillmaintained.com/rogeriopradoj/base-php-codingdojo-vagrant.png)](http://stillmaintained.com/rogeriopradoj/base-php-codingdojo-vagrant)

Fork do [wcomnisky](https://github.com/wcomnisky/base-php-codingdojo).

Projeto simples (indepentende de bibliotecas e/ou frameworks), para ser
facilmente utilizado em coding dojos de PHP 5.4 (e superiores).


## Vagrant

Este projeto usa o [Vagrant](http://vagrantup.com) *([documentação em português do Vagrant](http://friendsofvagrant.github.com/))*

A vantagem de usar o Vagrant é que todos utilizando o projeto terão
exatamente o mesmo ambiente virtualizado em suas máquinas.

Devido à virtualização, não é necessário alterar nenhuma configuração ou instalação de
software da sua máquina. Terminando a utilização você pode destruir a máquina
virtual e tudo volta ao que era antes :-).

Um pouco mais [sobre ambientes virtualizados](http://duodra.co/post/desenvolvimento-php-usando-maquinas-virtuais-fastcgi-fpm) e [sobre o Vagrant](http://www.slideshare.net/rogeriopradoj/desenvolvimento-php-com-vagrant-15511228).


## Requisitos

* Vagrant (e suas dependências, [ver no site oficial](http://vagrantup.com/))
* Cliente SSH (nos sistemas *nix - Linux, OSX, etc. - você provavelmente já tem
  algum instalado. No Windows procure pelo [Putty](http://www.putty.org/)).

    
## Baixando os fontes

### Git
    git clone https://github.com/rogeriopradoj/base-php-codingdojo-vagrant.git
    
### Download:
* Zip: https://github.com/rogeriopradoj/base-php-codingdojo-vagrant/archive/master.zip
* Tar.gz: https://github.com/rogeriopradoj/base-php-codingdojo-vagrant/archive/master.tar.gz


## E depois de baixar os fontes?

É hora de subir sua máquina virtual. O comando `vagrant up` irá criar a máquina virtual (baixar a box e provisionar a vm) com as configurações

### *nix (Linux, OSX, etc.)
    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant/Tests
    $ phpunit

### Windows (via Putty)
    $ vagrant up
    'conecte-se a sua VM Vagrant pelo Putty...'
    $ cd /vagrant/Tests
    $ phpunit


## E como programar?

A ideia é que você trabalhe no seu computador normalmente (crie os testes,
faça suas classes, refatore etc.) e use a conexão SSH na VM apenas para rodar os testes.

1. Programe no seu computador (host)
    `
    $ gedit, sublime, notepad++, etc.
    `

2. Acesse a máquina virtual (via ssh) apenas para rodar o teste
    `
    $ cd /vagrant/Tests && phpunit
    `

3. [Rinse and repeat](http://gettingreal.37signals.com/ch06_Rinse_and_Repeat.php)