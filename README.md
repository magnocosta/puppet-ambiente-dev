Puppet Ambiente Dev
===================
Um simples script Puppet para a instalação e configuração de um servidor completo para desenvolvimento de aplicações.

####O que ele faz?
Esse script cria várias máquinas virtuais utilizando o Vagrant e o Puppet para criação e provisionamento, simulando um ambiente completo e isolado para o desenvolvimento de aplicações.

#### Pré-requisitos

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

####Iniciando Máquinas Virtuais
Para criar sua máquina virtual:
<pre>
$ git clone --recursive https://github.com/magnocosta/puppet-ambiente-dev.git
$ cd puppet-ambiente-dev
$ vagrant up
</pre>

Para inciar uma máquina apenas utilize:
<pre>
$ vagrant up ${nome_da_maquina}
</pre>

A primeira vez que o comando é executado pode levar alguns minutos para concluir do download do Box.

####Máquinas disponíveis
* [DEV_RAILS] (https://github.com/magnocosta/puppet-ambiente-dev/wiki/DEV_RAILS)
* [DEV_PREADLY] (https://github.com/magnocosta/puppet-ambiente-dev/wiki/DEV_PREADLY)

Para mais informações [Vagrant documentation](http://vagrantup.com/v1/docs/index.html).
