# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$hostname = "ourmarae.com"

# Installation options
# $install = "ee site create" + $hostname + " --wp"
# $install = "ee site create" + $hostname + " --w3tc"
# $install = "ee site create" + $hostname + " --wpsc"
# $install = "ee site create" + $hostname + " --wpfc"
# $install = "ee site create" + $hostname + " --wpsubdir"
# $install = "ee site create" + $hostname + " --wpsubdir --w3tc"
# $install = "ee site create" + $hostname + " --wpsubdir --wpsc"
# $install = "ee site create" + $hostname + " --wpsubdir --wpfc"
# $install = "ee site create" + $hostname + " --wpsubdom"
# $install = "ee site create" + $hostname + " --wpsubdom --w3tc"
# $install = "ee site create" + $hostname + " --wpsubdom --wpsc"
# $install = "ee site create" + $hostname + " --wpsubdom --wpfc"
# $install = "ee site create" + $hostname + " --html"
# $install = "ee site create" + $hostname + " --php"
# $install = "ee site create" + $hostname + " --mysql"

# Run the scripts
$script = "<<SCRIPT
wget -qO ee rt.cx/ee && sudo bash ee
sudo ee stack install"
+ $install
+ "SCRIPT"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/precise32"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.hostname = $hostname

  config.vm.provision "shell", inline: $script

  config.vm.synced_folder "logs/", "/var/log/easyengine", owner: "root", group: "root"

end
