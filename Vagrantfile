Vagrant.configure("2") do |config|
  unless Vagrant.has_plugin?("vagrant-disksize")
    raise "vagrant-disksize is not installed! Run 'vagrant plugin install vagrant-disksize' first."
  end

  config.vm.network "public_network", :mac => "080027B712F9", bridge: ["en0: Wi-Fi (Wireless)", "en0", "bridge0"]
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", path: "provision.sh"
  config.disksize.size = "60GB"

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "media/", "/media", create: true, type: "rsync", rsync__exclude: ".gitkeep"

  config.vm.provider :virtualbox do |vb|
    vb.memory = 3072
    vb.cpus = 2
  end
end
