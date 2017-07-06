VAGRANT_API_VERSION = '2'
Vagrant.configure(VAGRANT_API_VERSION) do |config|

  config.ssh.username = 'ubuntu'
  config.ssh.password = '9e0a71f41a6cc8dfcaab8980'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 2048
  end

  config.vm.define :ismean do |ismean_config|
    #ismean_config.vm.box = 'ubuntu/trusty64'
    ismean_config.vm.box = 'ubuntu/xenial64'
    ismean_config.vm.host_name = 'ismean.local'
    ismean_config.vm.synced_folder 'saltstack/salt', '/srv/salt'
    ismean_config.vm.network 'private_network', ip: '192.168.10.10'

    ismean_config.vm.provision :salt do |salt|
      salt.masterless = true
      salt.minion_config = 'saltstack/etc/minion'
      salt.run_highstate = true
    end
  end
end
