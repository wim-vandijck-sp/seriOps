# SERIOps Repository

! Work in progress ! 

This repository contains several tools and scripts to automate the build of the SE Reference Implementation (SERI).

It will build two VMs, one CentOS linux, and a Windows Server 2016.

On the linux VM, it will install IIQ, and its required components, and additionally any applications that are referenced in the Standard Demo script. (LDAP, OrangeHRM, etc). 

The Windows VM will contain Active Directory, with its Users and Groups, and a folder structure with files and folders to demo FAM.

## Tooling

* Packer (https://www.packer.io/) : HashiCorp tool to build automated machine images.
    * Used to created the CentOS and Windows boxes
* Terraform (https://www.terraform.io/) : HashiCorp tool to manage Infrastructure as Code.
    * Used to create AWS environment
* Vagrant (https://www.vagrantup.com/) : HashiCorp tool to manage deployment environments.
    * Used to create the final VM box. This can be used as a template to be spun up and destroyed at will.
* Ansible (https://www.ansible.com/) : Automation and configuration management tool
    * Used to configure the machines and install all software.
 
### Install the tools (Mac)

```shell
brew cask install vagrant
brew install packer
brew install ansible
# optional:  brew cask install virtualbox 
```

## Secrets management

In ansible, most passwords are retrieved from configuration files containing variables. To avoid having secrets in there in plaintext, Ansible provides what is called Ansible Vault, which is a simple way of encrypting files or variabels, and then referring to the encrypted files, passing a password when running the playbook.

For this to work in our case, put a textfile name `vault-password-file` in the ansible/ folder, containing the password you retrieve from your colleagues ;-). #TODO add this password in whatever solution we end up choosing for sharing passwords.

To pass this password to running your playbook, add the config paramater `--vault-password-file vault-password-file` to your ansible command.

If you need to use passwords in your playbook, put them in a `secrets.yml` file in `vars/`. Encrypt it with 
```
ansible-vault encrypt --vault-password-file vault-password-file roles/identityiq/vars/secrets.yml
```
and include it in the appropriate ansible with:
```
- name: Include secret vars
  include_vars:
    file: secrets.yml
    
```
## Process Overview

### 1. Packer creates machine image

Packer uses a yaml configuration file. In it you describe all the virtualization layers you want to build for. Packer will download the centos iso file, start it up in your desired hypervisor, and run kickstart to do an automated installation. This installs base software packages, reboots, then updates all the packages, and sets up some basic configurations.

### 2. Ansible configures machine

After that, packer runs what is called provisioners, these can be shell scripts, or callouts to configuration tools such as chef or in this case ansible. It runs an ansible playbook that will install IIQ and all the software needed for a standard demo.

After the playbook some last scripts are run to clean up installation and minimize the diskspace in the box.
### 3. Vagrant packs up machine into box

When ansible has finished its run, vagrant packs up the VM into a vagrant box, which is then saved and can be used as a template.
### 4. Profit!!

This box can now either be called to life from the command line with vagrant, or be used to load into VMWare, AWS, SkyTap or what have you.

## Guided Steps

* Copy the identityiq.zip and patch jars to `scripts/ansible/roles/identityiq/files/`
* (Optional): in the `seri-centos.json` file, under the `variables` section, replace `mirror` with a local mirror for faster iso download (see https://www.centos.org/download/mirrors/ for a list).
* When using local checked out SERI repo, change `seri_source` to the correct path. (Work in progress)

* Build Windows VM
    * This is split into seperate steps to make life easier for the maintainer ;-) . We'll first build a base Windows2016 image. Then we'll build a second image that has all updates applied. And we'll use this as the base for the third and final image
```
cd scripts/packer/windows
packer build --only=vmware-iso -on-error=ask 01-windows-2016.json
packer build --only=vmware-vmx 02-windows-2016_updates.json
packer build --only=vmware-vmx 03-windows-2016_serify.json
```
    * For reference, these are timings
    * run 1 : 33 mins
    * run 2 : 67 mins
    * run 3 : 40 mins

* Build the SERI linux VM.
```
cd ..
packer build seri-centos.json
```

* Build only SERI VMWare image
```
packer build --only=vmware-iso seri-centos.json
```

* Import vagrant box

* Note : to load vmware from vagrant a separate license is needed. This is not the case for virtualbox.
    * HOWEVER, the VM will remain available in your VMWare instance.

```
cd ../vagrant
vagrant box add ../packer/builds/centos-8.3.vmware.box --name SeriOps
# Boot the box
vagrant up
# Log in
vagrant ssh
# Open http://localhost:8080/identityiq for IIQ
```

## Developer tips
 
### Packer logging

* To enable packer logging, you have to have some environment variables enabled:
```
export PACKER_LOG=1
export PACKER_LOG_PATH="packerlog.txt"
tail -f packerlog.txt
```

* To have packer not bail out immediately on error run like this:
```
packer build --only=vmware-iso -on-error=ask seri-centos.json
```

### Ansible tips

* On MacOS, since Mojave, ObjC forking has been restriced. This will cause some python code to fail, and this impacts ansible. Run this workaround before you run ansible:
```
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
```

* After a first build, and you work on the ansible playbook, to avoid having to build the whole stack, you can force vagrant to reprovision the box with the ansible playbook: 
```
vagrant provision
```

* To work on the image, it might be more convenient to use the VirtualBox box. This allows you to just `vagrant up` and then test your ansible provisioning.

* Alternatively, when the VM is running, mark the ip address and use that in the ansible inventory file. Then, you can just run ansible locally and work from here.
## TODO

* Correctly setup AWS from here - integrate with terraform
* Automate SERI checkout and build
* Dockerize (lcx-ize?) services and apps on seri machine