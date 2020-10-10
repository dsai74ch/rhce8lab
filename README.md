# rhce8lab
A RHCE8 study 

# About the environment

- 4 nodes for managed systems : 
  + servera and serverb has an extra interface
  + All servers have a 2GB secondary /dev/sdb disk attached.

- 1 control node for running Ansible playbooks. 

# Prepare the environment 

- [Install the Latest Version of Vagrant](https://www.vagrantup.com/downloads.html)
- [Install the Latest Version of Virtualbox and Virtualbox Extension Pack](https://www.virtualbox.org/wiki/Downloads) 


# Deploy 

1) Clone this repo on the notebook 

git glone https://github.com/fabioabreureis/rhce8lab/


2) Download the Redhat Developer iso image inside of rhce8lab directory project

RedHat Developer Portal <https://developers.redhat.com/>

3) Create the environment with Vagrant 

vagrant up 

# Try it in practice sample exam

<https://www.lisenet.com/2019/ansible-sample-exam-for-ex407/>
