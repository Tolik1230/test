#!/bin/bash
#add fix to exercise5-server2 here
sudo echo 'Host server1' >> /home/vagrant/.ssh/config
echo '	HostName 192.168.100.10' | sudo tee -a /home/vagrant/.ssh/config
echo '	UserKnownHostsFile /dev/null' | sudo tee -a /home/vagrant/.ssh/config
echo '	PasswordAuthentication no' | sudo tee -a /home/vagrant/.ssh/config
echo '	StrictHostKeyChecking no' | sudo tee -a /home/vagrant/.ssh/config
echo '	IdentityFile /home/vagrant/.ssh/private_key1' | sudo tee -a /home/vagrant/.ssh/config
echo '	IdentitiesOnly yes' | sudo tee -a /home/vagrant/.ssh/config
echo 'cp /vagrant/.vagrant/machines/server1/virtualbox/private_key /home/vagrant/.ssh/private_key1' | sudo tee -a /home/vagrant/.bashrc
echo 'chmod 700 /home/vagrant/.ssh/private_key1' | sudo tee -a /home/vagrant/.bashrc