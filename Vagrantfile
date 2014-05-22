# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"


$script = <<SCRIPT
curl -sL rt.cx/ee | sudo bash
sudo ee system install
sudo ee site create easyengine.com --wp  
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "easyengine-vagrant"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.hostname = "easyengine.com"

  config.vm.provision "shell", inline: $script
  
end
