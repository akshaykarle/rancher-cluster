# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
    sudo apt-get update -y
    sudo apt-get install -y docker-ce
    curl https://releases.hashicorp.com/terraform/0.9.0/terraform_0.9.0_linux_amd64.zip -o /tmp/terraform.zip
    sudo apt-get install -y unzip
    unzip /tmp/terraform.zip
    sudo mv terraform /usr/bin
    cd /vagrant && sh ./setup.sh
  SHELL
end
