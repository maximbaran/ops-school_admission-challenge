#!/bin/bash
#add fix to exercise3 here
# Maxim Baran 2021-11-30
sudo sed  -i  's/Require all denied/#Require all denied/i'  /etc/apache2/sites-enabled/000-default.conf
sudo systemctl restart apache2
