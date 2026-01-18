#!/usr/bin/env bash
# Sets up a basic Nginx web server reachable on the intranet

sudo apt update -y
sudo apt install -y nginx

# Allow HTTP traffic
sudo ufw allow 'Nginx HTTP'

# Start and enable nginx
sudo service nginx start

# Create a simple test page
echo "Hello World from intranet server" | sudo tee /var/www/html/index.html > /dev/null

# Fix permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Confirmation
echo "Intranet web server setup complete."

