.PHONY: all re build vagrant-add vagrant-remove up clean hard-clean

all : build vagrant-add up

re : clean vagrant-remove all

build:
	packer build template.json

package:
	vagrant package --base xubuntu-42 --vagrantfile Vagrantfile --output xubuntu-amd64-virtualbox.box

vagrant-add:
	vagrant box add 42_xubuntu xubuntu-amd64-virtualbox.box

vagrant-remove:
	vagrant box remove 42_xubuntu --all

up:
	mkdir -p vm
	cd vm && vagrant init 42_xubuntu && vagrant up

clean: vagrant-remove
	rm -rf xubuntu-amd64-virtualbox.box
	cd vm && vagrant destroy -f
	rm -rf vm
