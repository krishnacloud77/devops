# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
#Vagrant.configure("2") do |config|
#  config.vm.box = "centos/7"
#  config.vm.network "forwarded_port", guest: 8080, host: 8080
#end


BOX_IMAGE = "centos/7"
NODE_COUNT = 1
Vagrant.configure("2") do |config|
  (1..NODE_COUNT).each do |i|
    config.vm.define "linuxmachine" do |subconfig|
      subconfig.vm.box = BOX_IMAGE
      subconfig.vm.hostname = "linuxmachine.example.com"
      subconfig.vm.network :private_network, ip: "192.168.33.10"
      subconfig.vm.network "forwarded_port", guest: 8080, host: 8088
      subconfig.vm.provider "virtualbox" do |v|
        v.memory = 2048
    end
      subconfig.ssh.forward_agent = true
    end
  end

  (1..NODE_COUNT).each do |i|
    config.vm.define "linuxmachine2" do |subconfig|
      subconfig.vm.box = BOX_IMAGE
      subconfig.vm.hostname = "linuxmachine2.example.com"
      subconfig.vm.network :private_network, ip: "192.168.33.11"
      subconfig.vm.network "forwarded_port", guest: 8081, host: 8087
      subconfig.vm.provider "virtualbox" do |v|
        v.memory = 2048
    end
      subconfig.ssh.forward_agent = true
    end
  end
end

