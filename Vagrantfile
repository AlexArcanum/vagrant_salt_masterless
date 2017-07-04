# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

VAGRANT_API_VERSION = '2'
Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 2048
  end
  config.vm.define :ismean do |ismean_config|
    ismean_config.vm.box = 'ubuntu/trusty64'
    ismean_config.vm.host_name = 'ismean.local'
    ismean_config.vm.synced_folder 'saltstack/', '/srv/salt'
    ismean_config.vm.network 'private_network', ip: '192.168.10.10'

    ismean_config.vm.provision :salt do |salt|
      salt.masterless = true
      salt.minion_config = 'saltstack/etc/minion'
      salt.run_highstate = true
    end
  end
end
