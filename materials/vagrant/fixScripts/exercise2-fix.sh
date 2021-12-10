#!/bin/bash
#add fix to exercise2 here
#Maxim Baran 2021-11-30
sudo sed -i.bak '/127.0.0.1 www.ascii-art.de/d' /etc/hosts
rm -f /etc/hosts.bak
