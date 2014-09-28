Puppet Ambiente Dev
===================
Um simples script Puppet para a instalação e configuração de um servidor completo para desenvolvimento de aplicacoes.

####O que ele faz?
  Esse script cria varias maquinas virtuais utilizando o Vagrant e o Puppet para criação e provisionamento das máquinas criando um ambiente completo e isolado para o desenvolvimento de aplicações.

#### Pré-requisitos

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

####Iniciando Máquinas Virtuais
  Para criar sua máquina virtual:
    <pre>
    $ git clone --recursive https://github.com/magnocosta/puppet-ambiente-dev.git
    $ cd puppet-ambiente-dev
    $ vagrant up</pre>
  Para inciar uma maquina apenas utilize:
    <pre>
      $ vagrant up ${nome_da_maquina}
    </pre>
  A primeira vez que o comando é executado pode levar alguns minutos para concluir do download do Box.

####Máquinas disponíveis
  * DEV_RAILS

####DEV_RAILS
  Essa maquina vem com os itens abaixo configurados e prontos para serem utilizados:
  
  * Mysql;
  * RVM;
  * Versão do Ruby "ruby-2.0.0-p247";
  * Usuário "admin";
  
  Com o projeto Vagrant criado na estrutura abaixo:
    <pre>
      |--Root
        |--manifests
        |--modules
        |--apps
        |--Vagrantfile
    </pre>

  Acesse a pasta apps e crie o seu projeto rails com o comando:
  <pre>
    $ rails new teste
  </pre>
  
  Na pasta Root acesse a maquina via ssh com o comando abaixo:
  <pre>
    $ vagrant ssh
  </pre>
  
  Altere a senha do usuario admin com o comando abaixo:
  <pre>
    $ sudo passwd admin
  </pre>

  Utilize esse usuario para traalhar na máquina com o comando abaixo:
  <pre>
    $ su admin
    //Digite sua senha e depois
    $ bash --login
  </pre>
  
  Pronto sua máquina esta pronta para o desenvolvimento, a pasta onde seu projeto sera sincronizado entre seu PC e a maquina virtual é "/var/ruby_apps" sendo assim tudo que voce colocar na pasta apps citada anteriormente será sincronizada automaticamente pelo Vagrant na pasta ruby_apps.
  
  Dica: Se você pretende utilizar essa máquina para o desenvolvimento de vários projetos rails é legal criar uma gemset para isolar as bibliotecas que serão utilizadas em cada projeto, evitando assim conflitos chatos de serem resolvidos. 
  
  Dica: Caso algum passo acima falhe destrua sua maquina virtual e comece tudo novamente.
  
  
####Virtual Machine Management
  Para suspender a utilização de sua máquina virtual:
  <pre>
    $ vagrant suspend
  </pre>
  
  Para continuar utilizando sua máquina virtual:
  <pre>
    $ vagrant resume
  </pre>
  
  Para desligar sua máquina virtual:
  <pre>
    $ vagrant halt
  </pre>
  
  Para ligar sua máquina virtual:
  <pre>
    $ vagrant up
  </pre>

  Você pode checar o estado de sua máquina virtual com:
  <pre>
    $ vagrant status
  </pre>
  
  Para destruir completamente sua máquina virtual (Cuidado!):
  <pre>
    $ vagrant destroy
  </pre>
  
  Para mais informações [Vagrant documentation](http://vagrantup.com/v1/docs/index.html).
