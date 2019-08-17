Vagrant.configure("2") do |config|
  config.vm.network "public_network"
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", path: "provision.sh"

  config.vm.provider :virtualbox do |p|
    p.memory = 3072
    p.cpus = 2
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "media/", "/media", create: true, type: "nfs", mount_options: ["rw", "vers=3", "tcp", "uid=1000", "gid=1000"], inux__nfs_options: ["rw", "no_subtree_check", "all_squash", "async"]
end
