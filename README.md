puppet-ambiente-dev
===================
Um simples script Puppet para a instalação e configuração de um servidor completo para desenvolvimento de aplicacoes.

####O que ele faz?
  Esse script cria varias maquinas virtuais utilizando o Vagrant e o Puppet para criação e provisionamento das máquinas criando um ambiente completo e isolado para o desenvolvimento de aplicações.

## Pré-requisitos

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

####Máquinas disponíveis
  * dev_rails
  
## Iniciando sua máquina virtual

    Para criar sua máquina virtual:

    host $ git clone --recursive https://github.com/magnocosta/ambienteTomcatMysql
    host $ cd ambienteTomcatMysql
    host $ vagrant up

    Para inciar uma maquina apenas utilize:
    host $ vagrant up ${nome_da_maquina}
    
    A primeira vez que o comando é executado pode levar alguns minutos para concluir do download do Box.      
  
## Virtual Machine Management

    Para suspender a utilização de sua máquina virtual:
    host $ vagrant suspend

    Para continuar utilizando sua máquina virtual:
    host $ vagrant resume

    Para desligar sua máquina virtual:
    host $ vagrant halt

    Para ligar sua máquina virtual:
    host $ vagrant up

    Você pode checar o estado de sua máquina virtual com:
    host $ vagrant status

    Para destruir completamente sua máquina virtual (Cuidado!):
    host $ vagrant destroy

    Para mais informações [Vagrant documentation](http://vagrantup.com/v1/docs/index.html).
