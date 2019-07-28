$script = <<-SCRIPT
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
chmod 0777 /media/tv
chmod 0777 /media/movies
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.network "public_network"
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", inline: $script
end
