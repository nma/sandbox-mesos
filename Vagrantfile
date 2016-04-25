# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true
  # config.vm.synced_folder Dir.getwd, "/home/vagrant/roles/ansible-zookeeper", nfs: true

  # ubuntu
  config.vm.define 'master1', primary: true do |c|
    c.vm.network "private_network", ip: "192.168.100.1"
    c.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1"
  	c.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  	c.vm.provision "shell" do |s|
		  s.inline = "apt-get update -y; apt-get install ansible -y;"
		  s.privileged = true
    end
  end
  
  # ubuntu
  config.vm.define 'master2', primary: true do |c|
    c.vm.network "private_network", ip: "192.168.100.2"
    c.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1"
  	c.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  	c.vm.provision "shell" do |s|
		  s.inline = "apt-get update -y; apt-get install ansible -y;"
		  s.privileged = true
    end
  end
  
  # ubuntu
  config.vm.define 'slave', primary: true do |c|
    c.vm.network "private_network", ip: "192.168.101.1"
    c.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1"
  	c.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  	c.vm.provision "shell" do |s|
		  s.inline = "apt-get update -y; apt-get install ansible -y;"
		  s.privileged = true
    end
  end

end
