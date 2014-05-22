Easyengine Vagrant
==================

It is simple Vagrant file to test the easy engine on your any system using Vagrant.


## Installation

* First we will install Virtual Box and Vigrant on our system.

```bash
sudo apt-get install virtualbox

```

1.  After that Download Vagrant Latest Version from http://www.vagrantup.com/downloads
2.  Install vagrant
  ```bash
   sudo dpkg -i vagrant_*.deb
  ```


2.  Also we need to install vagrant-hostsupdater plugin for Vagrant
  ```bash
    sudo vagrant plugin install vagrant-hostsupdater
  ```


### Lets Setup Vigrant
1. You can use any distribution from VigrantCloud that supported by Easy Engine. I am using ubuntu/precise32. To change Distribution open the Vigrantfile and replace ubutnu/precise with box name

  ```bash
  mkdir easyengine-vagrant
  cd easyengine-vagrant
  wget https://raw.githubusercontent.com/gau1991/easyengine-vagrant/master/Vagrantfile
  ```

2. Now Start the Vagrant
  ```bash
  vagrant up
  ```
3. It will setup EasyEngine on Vigrant Box. To Test, point your system browser to http://easyengine.com
