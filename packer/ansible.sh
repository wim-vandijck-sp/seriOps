#!/bin/bash -eux

installAnsible () {
  sudo apt-get update -y
  sudo apt install software-properties-common -y
  #sudo apt-add-repository ppa:ansible/ansible
  #sudo apt-get update -y
  sudo apt-get install ansible -y
  }

# Check for debian/ubuntu
if [ -f /etc/debian_version ] ; then
  installAnsible
else 

  # Add the EPEL repository, and install Ansible.
  dnf makecache
  dnf install epel-release -y
  dnf makecache
  dnf install ansible -y
fi