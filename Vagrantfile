VAGRANTFILE_API_VERSION = "2"
VAGRANT_DISABLE_VBOXSYMLINKCREATE = "1"

network  = '172.25.250'
nodes = [
{ :hostname => 'servera', :ip => "#{network}.10" , :ram => 1024 , :netif2 => 'yes' , :sdb =>  'yes' },
{ :hostname => 'serverb', :ip => "#{network}.11" , :ram => 1024,  :netif2 => 'yes', :sdb =>  'yes' },
{ :hostname => 'serverc', :ip => "#{network}.12" , :ram => 1024, :sdb =>  'yes' },
{ :hostname => 'serverd', :ip => "#{network}.13" , :ram => 1024, :sdb =>  'yes' },
{ :hostname => 'control', :ip => "#{network}.9" , :ram => 2048 },
<<<<<<< HEAD
{ :hostname => 'repo',   :ip => "#{network}.8" , :ram => 1024 }]
=======
{ :hostname => 'repo', :ip => "#{network}.8" , :ram => 1024 }]
>>>>>>> 25545748f9c73c08b73b4c65088e9adf4ee57d10

Vagrant.configure("2") do |config|
    nodes.each do |node|
	config.vm.define node[:hostname] do |nodeconfig|
                nodeconfig.vm.box = "rdbreak/rhel8node"
		nodeconfig.vm.hostname = node[:hostname]
		nodeconfig.vm.network :private_network, ip: node[:ip]
                memory = node[:ram] ? node[:ram] : 512;
                cpu = node[:cpu] ? node[:cpu] : 1;

         	nodeconfig.vm.provider :virtualbox do |vb|
			vb.customize [ "modifyvm", :id, "--memory", memory.to_s,]
                	nodeconfig.ssh.insert_key = false
                	nodeconfig.vm.box_check_update = false
<<<<<<< HEAD
                	nodeconfig.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: ["*.iso",".git/", "*.vdi"]
              		memory = node[:ram] ? node[:ram] : 512;

        if node[:hostname] == "repo"
		    nodeconfig.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: [".git/", "*.vdi"]
                    nodeconfig.vm.provision :shell, :inline => "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;", run: "once"
                    nodeconfig.vm.provision :shell, :inline => "bash -x /vagrant/postrepo.sh"
  		    nodeconfig.vm.provision :ansible_local do |ansible|
		    ansible.playbook = "/vagrant/playbooks/site.yml"
		    ansible.install = false
		    ansible.compatibility_mode = "2.0"
		    ansible.inventory_path = "/vagrant/playbooks/inventory"
		    ansible.config_file = "/vagrant/playbooks/ansible.cfg"
		    ansible.limit = "all"
		 end
       end
=======
                	nodeconfig.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: [".git/", "*.vdi"]
              		memory = node[:ram] ? node[:ram] : 512;

        if node[:hostname] == "repo"
                    nodeconfig.vm.provision :shell, :inline => "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;", run: "always"
                    nodeconfig.vm.provision :shell, :inline => "sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y ; sudo yum install -y sshpass python3-pip python3-devel httpd sshpass vsftpd createrepo", run: "always"
                    nodeconfig.vm.provision :shell, :inline => " python3 -m pip install -U pip ; python3 -m pip install pexpect; python3 -m pip install ansible", run: "always"
        end
>>>>>>> 25545748f9c73c08b73b4c65088e9adf4ee57d10

	if node[:sdb] == "yes"
              vb.customize ["storagectl", :id, "--add", "sata", "--name", "SATA" , "--portcount", 4, "--hostiocache", "on"]
              vb.customize [ "createhd", "--filename", "disk_sata-#{node[:hostname]}", "--size", "2048" ]
              vb.customize [ "storageattach", :id, "--storagectl", "SATA", "--port", 2, "--device", 0, "--type", "hdd", "--medium", "disk_sata-#{node[:hostname]}.vdi" ]
         end     

        if node[:netif2] == "yes"
                vb.customize ["modifyvm", :id, "--nic3", "intnet"]
        end
	end
	end
end
end
