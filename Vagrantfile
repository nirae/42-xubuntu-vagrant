# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "42_xubuntu"

    config.ssh.username = "user42"
    config.ssh.password = "user42"
    config.ssh.forward_agent = true
    config.ssh.forward_x11 = true

    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder ".", "/home/user42/42"

    config.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.customize ["modifyvm", :id, "--vram", "12"]
    end
end
