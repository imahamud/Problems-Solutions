#!/bin/bash
#Preinstall script for Centos VirtualBox Guest additions.

#Get all the stuff required to build the VirtualBox Guest additions
sudo yum groupinstall "Development Tools"
sudo yum install kernel-devel

#You also need dkms from the epel repository
sudo yum install epel-release
sudo yum install dkms

#NEXT STEPS: Copy VBoxLinuxAdditions.run to Desktop
#cp /media/run/user/Vbox_GAs_6.0.0/VBoxLinuxAdditions.run ~/Desktop

#RUN VBoxLinuxAdditions.run as root
#sudo ./VBoxLinuxAdditions.run
