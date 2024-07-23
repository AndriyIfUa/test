#!/bin/bash
sudo mkdir -p /var/www/html
# sudo -s
# # Update package lists
# apt-get update -y

# # Install utilities
# apt-get install dialog apt-utils -y

# # Install Nginx
# apt-get install -y nginx
# systemctl enable nginx
# systemctl start nginx

# Create a simple HTML file with "Hello from your web application!"
echo "Hello from your web application!" | sudo tee /var/www/html/index.html
