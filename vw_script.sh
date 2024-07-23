#!/bin/bash
sudo mkdir -p /var/www/html
echo "Directory created" | sudo tee /var/log/custom-script.log
sudo apt-get update -y
echo "Packages updated" | sudo tee -a /var/log/custom-script.log
sudo apt-get install dialog apt-utils -y
echo "Utilities installed" | sudo tee -a /var/log/custom-script.log
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
echo "Nginx installed and started" | sudo tee -a /var/log/custom-script.log
echo "Hello from your web application!" | sudo tee /var/www/html/index.html
echo "index.html created" | sudo tee -a /var/log/custom-script.log
