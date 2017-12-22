# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|  

  config.vm.box = "mmichal/windows2012r2_clean"
  config.vm.guest = :windows
  
  config.vm.communicator = "winrm"
  
  config.vm.network "private_network", ip: "192.168.123.123"
  config.vm.network :forwarded_port, guest: 1025, host: 1025
  config.vm.network :forwarded_port, guest: 3389, host: 1234
  config.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true

######################################################START-PREPARE-MACHINE###############################################################  
  #Install chocolatey
  config.vm.provision :shell, path: "vagrant-scripts/install.ps1" 
  #Install IIS, .NET 3.5, .NET 4.5
  config.vm.provision :shell, path: "vagrant-scripts/enable_feature.ps1"  
  # Trigger reload machine
  config.vm.provision :reload  
  #JAVA JRE
  config.vm.provision :shell, inline: "choco install jre8 --version 8.0.151 -y"  
  # Trigger reload machine
  config.vm.provision :reload  
  #UrlRewrite
  config.vm.provision :shell, inline: "choco install UrlRewrite --version 2.1.20171010 -y"
  # Trigger reload machine
  config.vm.provision :reload 
  #NSSM
  config.vm.provision :shell, inline: "choco install nssm --version 2.24.0.20170619 -y"
  # Trigger reload machine
  config.vm.provision :reload
  #SOLR
  config.vm.provision :shell, inline: "choco install solr --version 6.3.0 -y"
  config.vm.provision :shell, path: "vagrant-scripts/install-solr-as-a-service.bat"
  # Trigger reload machine
  config.vm.provision :reload 
  #MONGO-DB
  config.vm.provision :shell, path: "vagrant-scripts/install-mongodb.ps1"
  config.vm.provision :shell, inline: "choco install robo3t --version 1.1.1 -y" 
  # Trigger reload machine
  config.vm.provision :reload  
  #MSSQL EXPRESS 2014
  config.vm.provision :shell, inline: "choco install MsSqlServer2014Express --version 12.2.5000.20170905  -y"
  config.vm.provision :shell, inline: "choco install MsSqlServerManagementStudio2014Express --version 12.2.5000.20170905 -y"
  config.vm.provision :shell, inline: "sc config SQLBrowser start= auto"
  config.vm.provision :shell, inline: "net start SQLBrowser"
#######################################################END-PREPARE-MACHINE###############################################################  

end