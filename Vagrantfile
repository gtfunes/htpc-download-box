Vagrant.configure("2") do |config|
  config.vm.network "public_network"
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision 'shell', path: 'provision.sh'

  config.vm.provider :virtualbox do |p|
    p.memory = 2048
    p.cpus = 1
  end
end
