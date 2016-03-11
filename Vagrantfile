# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  #config.vm.box = 'lazyfrosch/debian-8-jessie-amd64-puppet'
  config.vm.box = 'SimonHoenscheid/debian8-puppet3'

  config.vm.hostname = 'gitlab.example.org'

  config.vm.network 'forwarded_port', guest: 22, host: 10022
  config.vm.network 'forwarded_port', guest: 80, host: 10080
  config.vm.network 'forwarded_port', guest: 443, host: 10443

  config.vm.provider 'virtualbox' do |vb|
     vb.memory = '1024'
  end

  config.vm.provision 'puppet' do |puppet|
    puppet.options = '--show_diff'
    puppet.hiera_config_path = 'hiera.yaml'
    puppet.options += ' --modulepath /vagrant/modules'
  end
end
