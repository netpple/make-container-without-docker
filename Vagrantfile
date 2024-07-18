# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_IMAGE = "gyptazy/ubuntu22.04-arm64"
HOST_NAME = "ubuntu2204"
HOST_NAME2 = "ubuntu2204-2"
VM_PROVIDER = "vmware_fusion"

$pre_install = <<-SCRIPT
  export DEBIAN_FRONTEND=noninteractive
  echo ">>>> pre-install <<<<<<"
  apt-get update &&
  apt-get -y install gcc &&
  apt-get -y install make &&
  apt-get -y install pkg-config &&
  apt-get -y install libseccomp-dev &&
  apt-get -y install tree &&
  apt-get -y install jq &&
  apt-get -y install net-tools &&
  apt-get -y install bridge-utils &&
  apt-get -y install python3-pip > /dev/null 2>&1 &&
  pip install pyroute2==0.5.18
SCRIPT

Vagrant.configure("2") do |config|

 config.vm.define HOST_NAME do |subconfig|
   subconfig.vm.box = BOX_IMAGE
   subconfig.vm.hostname = HOST_NAME
   subconfig.vm.network :private_network, ip: "192.168.104.2"
   subconfig.vm.provider VM_PROVIDER do |v|
     v.memory = 1536
     v.cpus = 2
   end
   subconfig.vm.provision "shell", privileged: true, inline: $pre_install
 end

 config.vm.define HOST_NAME2 do |subconfig|
   subconfig.vm.box = BOX_IMAGE
   subconfig.vm.hostname = HOST_NAME2
   subconfig.vm.network :private_network, ip: "192.168.104.3"
   subconfig.vm.provider VM_PROVIDER do |v|
     v.memory = 1536
     v.cpus = 2
   end
   subconfig.vm.provision "shell", privileged: true, inline: $pre_install
 end

end

