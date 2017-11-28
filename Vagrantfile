# -*- mode: ruby -*-
# vi: set ft=ruby :

def set_hostname(server)
    server.vm.provision 'shell', inline: "hostname #{server.vm.hostname}"
end

Vagrant.require_version ">=1.9.6"
Vagrant.configure("2") do |config|
    config.vm.define 'apache' do |n|
        n.vm.box = "centos/7"
        n.vm.network "private_network", ip: "192.168.50.4"
        n.vm.synced_folder "C:/Virtual/Corductive", "/var/www/html", type: 'nfs'
        set_hostname(n)

        n.vm.provider "virtualbox" do |vb|
            vb.gui = false
            vb.memory = "1024"
            vb.name = "Apache Server"
            vb.linked_clone = true
        end

        n.vm.provision :chef_zero do |chef|
            chef.cookbooks_path = "chef-dev-box/cookbooks"
            chef.nodes_path = "chef-dev-box/nodes"
            chef.add_recipe "misc::default"
            chef.add_recipe "apache::default"
        end
    end

    config.vm.define 'nodejs' do |n|
        n.vm.box = "centos/7"
        n.vm.network "private_network", ip: "192.168.50.5"
        # n.vm.synced_folder "C:/Virtual/Code/html", "/var/www/html", type: 'nfs'
        n.vm.synced_folder "C:/Virtual/M101", "/var/www"
        set_hostname(n)

        n.vm.provider "virtualbox" do |vb|
            vb.gui = false
            vb.memory = "1024"
            vb.name = "NodeJS Server"
            vb.linked_clone = true
        end

        n.vm.provision :chef_zero do |chef|
            chef.cookbooks_path = "chef-dev-box/cookbooks"
            chef.nodes_path = "chef-dev-box/nodes"
            chef.add_recipe "misc::default"
            chef.add_recipe "meanstack::default"
        end
    end
end
