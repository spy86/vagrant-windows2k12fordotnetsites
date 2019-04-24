# Vagrantbox Windows 2012R2 for .Net Sites

[![Vagrant](https://img.shields.io/badge/vagrant-windows2k12forDotNetsites-orange.svg)]()


## Prerequisites
* Vagrant - https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.msi
* Virtualbox - http://download.virtualbox.org/virtualbox/6.0.4/VirtualBox-6.0.4-128413-Win.exe
* Vagrant Reload Provisioner - open powershell console and run `vagrant plugin install vagrant-reload`

## How to use?

1. Clone https://github.com/spy86/vagrant-windows2k12fordotnetsites
2. Run `vagrant up` from terminal and wait while virtual machine is installed.

## Vagrant file includes

* Chocolatey
* IIS, .NET 3.5, .NET 4.5
* Java Jre 8.0.151
* UrlRewrite 2.1
* Mssql Express 2014
* Mssql Server Management Studio 2014 Express
* NSSM 2.24
* SOLR 6.3.0
* MongoDB server community Edition
* Robo Mongo
