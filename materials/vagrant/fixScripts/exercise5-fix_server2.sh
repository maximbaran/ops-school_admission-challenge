#!/bin/bash
#add fix to exercise5-server2 here
#Maxim Baran 2021-11-30
sudo apt update
sudo apt install sshpass
sshpass -p vagrant ssh -o StrictHostKeyChecking=no vagrant@192.168.100.10 cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
sudo -u vagrant ssh-keygen -P "" -t rsa -f /home/vagrant/.ssh/id_rsa -q
sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@192.168.100.10