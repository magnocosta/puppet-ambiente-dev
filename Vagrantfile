# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

   config.vm.provision :shell, :path => 'http://bit.ly/1vgzLDC'
   config.vm.box = 'lucid32'
   config.vm.box_url = 'http://files.vagrantup.com/lucid32.box'

   # thanks: http://jeremykendall.net/2013/08/09/vagrant-synced-folders-permissions/
  
  config.vm.define :dev_rails do |dev_rails_config|
    dev_rails_config.vm.network :private_network, :ip => "192.168.33.10"
    dev_rails_config.vm.synced_folder 'apps_ruby', '/var/ruby_apps', nfs: true
    dev_rails_config.vm.network "forwarded_port", guest: 3000, host: 3000
    
    dev_rails_config.vm.provision "puppet" do |puppet|
      puppet.module_path = "modules"
      puppet.manifest_file = "dev_rails_server.pp"
    end
  end
   
  config.vm.define :dev_java do |dev_java_config|
    dev_java_config.vm.network :private_network, :ip => "192.168.33.11"
    dev_java_config.vm.provision "puppet" do |puppet|
      puppet.module_path = "modules"
      puppet.manifest_file = "dev_java_server.pp"
    end
  end
   
  config.vm.define :dev_php do |dev_php_config|
    dev_php_config.vm.network :private_network, :ip => "192.168.33.12"
    dev_php_config.vm.synced_folder 'apps_php', '/var/www', nfs: true
    dev_php_config.vm.network "forwarded_port", guest: 80, host: 80
   
    dev_php_config.vm.provision "puppet" do |puppet|
      puppet.module_path = "modules"
      puppet.manifest_file = "dev_php_server.pp"
    end
  end

end
