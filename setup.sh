#!/bin/bash

curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt update
sudo apt-get install -y make nodejs postgresql

sudo -u postgres createuser --createdb vagrant
sudo -u postgres createdb vagrant
sudo -u postgres psql -c "ALTER USER vagrant WITH PASSWORD 'vagrant';"

cd /vagrant/js-fastify-blog
make start
