Puppet Ambiente Dev
===================
A simple script puppet for install and configure a full server for development.

#### What does he do?
This script create a virtual machine using Vagrant and puppet as creation and provision, emulation a complete enviroment for development

#### Pré-requisitos

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

#### Start your Virtual Machine
Para criar sua máquina virtual:
<pre>
$ git clone --recursive https://github.com/magnocosta/puppet-ambiente-dev.git
$ cd puppet-ambiente-dev
$ vagrant up
</pre>

Para inciar uma máquina apenas utilize:
<pre>
$ vagrant up dev_server
</pre>

#### What are there on the box?
- Mysql
- Ngnx
- Rvm
- Postgresql
- MongoDB
- Redis
- Git
- Curl
- Vim
- User Admin

A primeira vez que o comando é executado pode levar alguns minutos para concluir do download do Box.

Para mais informações [Vagrant documentation](http://vagrantup.com/v1/docs/index.html).
