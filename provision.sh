#!/bin/bash

apt-get update
apt-get install git docker docker-compose -y
systemctl enable docker && systemctl start docker
chown -R vagrant:vagrant /media
git clone https://github.com/gtfunes/htpc-download-box.git
chown -R vagrant:vagrant htpc-download-box
cd htpc-download-box
cp .env.example .env
usermod -aG docker $(whoami)
docker-compose up -d
sudo docker exec -it sonarr chown -R abc:abc /tv/
sudo docker exec -it radarr chown -R abc:abc /movies/
