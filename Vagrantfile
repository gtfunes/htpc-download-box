Vagrant.configure("2") do |config|
  unless Vagrant.has_plugin?("vagrant-disksize")
    raise "vagrant-disksize is not installed! Run 'vagrant plugin install vagrant-disksize' first."
  end

  config.vm.network "public_network", :mac => "080027B712F9", bridge: ["en0: Wi-Fi (Wireless)", "en0", "bridge0"]
  config.vm.box = "geerlingguy/ubuntu1804"
  config.vm.provision "shell", run: "once", path: "provision.sh"
  config.disksize.size = "80GB"

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./config", "/media/config", disabled: false

  config.vm.provider :virtualbox do |vb|
    vb.memory = 3072
    vb.cpus = 2
  end
end
