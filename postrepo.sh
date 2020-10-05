#!/bin/bash

 sudo rm -rf /etc/yum.repos.d/* ; sudo yum clean all ; sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
 sudo python3 -m pip install -U pip ; sudo  python3 -m pip install pexpect; sudo python3 -m pip install ansible
