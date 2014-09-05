# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/precise32"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.hostname = "easyengine.com"

  config.vm.provision "shell", path: "easyengine.sh"

  config.vm.synced_folder "logs/", "/var/log/easyengine", owner: "root", group: "root"
  
end
