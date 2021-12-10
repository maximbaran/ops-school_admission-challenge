#!/bin/bash
#add fix to exercise4-server2 here
# Maxim Baran 2021-11-30
#sudo echo "192.168.100.10  server1" >> /etc/hosts
echo 'PermitRootLogin prohibit-password' | sudo tee -a /etc/ssh/sshd_config
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
echo '192.168.100.10 server1' | sudo tee -a /etc/hosts
sudo systemctl restart sshd