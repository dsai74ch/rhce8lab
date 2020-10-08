#!/bin/bash
sudo  sudo rm -rf /etc/yum.repos.d/* ; sudo yum clean all ;
sudo dnf install http://rpms.remirepo.net/enterprise/remi-release-8.rpm; sudo yum install -y sshpass python3-pip python3-devel
sudo python3 -m pip install -U pip ; sudo  python3 -m pip install pexpect; sudo python3 -m pip install ansible 

