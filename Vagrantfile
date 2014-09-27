# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

   config.vm.provision :shell, :path => 'http://bit.ly/1vgzLDC'
   config.vm.box = 'lucid32'
   config.vm.box_url = 'http://files.vagrantup.com/lucid32.box'
   config.vm.synced_folder 'apps', '/var/ruby_apps', group: 'admin'

   config.vm.define :dev_rails_server do |drs_config|
    drs_config.vm.network :private_network, :ip => "192.168.33.10"
    
    drs_config.vm.provision "puppet" do |puppet|
        puppet.module_path = "modules"
        puppet.manifest_file = "dev_rails_server.pp"
    end
 
   end

end
