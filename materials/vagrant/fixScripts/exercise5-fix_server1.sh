#!/bin/bash
#add fix to exercise5-server1 here
#Maxim Baran 2021-11-30
sudo chmod 700 /home/vagrant/.ssh
sudo -u vagrant ssh-keygen -P "" -t rsa -f /home/vagrant/.ssh/id_rsa -q
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
echo "StrictHostKeyChecking no" >> /home/vagrant/.ssh/config