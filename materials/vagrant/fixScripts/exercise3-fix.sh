#!/bin/bash
#add fix to exercise3 here
echo '<Location "/">' | sudo tee -a /etc/apache2/sites-available/000-default.conf
echo 'Require all granted' | sudo tee -a /etc/apache2/sites-available/000-default.conf
echo '</Location>' | sudo tee -a /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2