ansible -i inventory -u root -k -m user -a "name=devops password=devops" all 
ansible -i inventory  -u root -k -m authorized_key -a "user=devops state=present key='{{ lookup('file', '/home/devops/.ssh/id_rsa.pub') }} '" all
ansible -i inventory  -u root -k -m copy -a "content='devops ALL=(ALL)	NOPASSWD: ALL' dest=/etc/sudoers.d/devops" all
