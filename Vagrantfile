Vagrant.configure("2") do |config|
  config.vm.define "manager" do |manager|
    manager.vm.box = "ubuntu/jammy64"
    manager.vm.hostname = 'srv-manager'
    manager.vm.network "public_network", ip: "192.168.0.130", bridge: "Intel(R) Dual Band Wireless-AC 3165"
    manager.vm.provision "shell",
      path: "manager.sh"
    config.vm.provider "virtualbox" do |manager|
      manager.memory = "1024"
      manager.cpus   = "2"
  end
 end
end

Vagrant.configure("2") do |config|
  config.vm.define "worke1" do |worker1|
    worker1.vm.box = "ubuntu/jammy64"
    worker1.vm.hostname = 'srv-worker1'
    worker1.vm.network "public_network", ip: "192.168.0.131", bridge: "Intel(R) Dual Band Wireless-AC 3165"
    worker1.vm.provision "shell",
      path: "workers.sh"
    config.vm.provider "virtualbox" do |worker1|
      worker1.memory = "1024"
      worker1.cpus   = "2"
  end
 end
end

Vagrant.configure("2") do |config|
  config.vm.define "worker2" do |worker2|
    worker2.vm.box = "ubuntu/jammy64"
    worker2.vm.hostname = 'srv-worker2'
    worker2.vm.network "public_network", ip: "192.168.0.132", bridge: "Intel(R) Dual Band Wireless-AC 3165"
    worker2.vm.provision "shell",
      path: "workers.sh"
    config.vm.provider "virtualbox" do |worker2|
      worker2.memory = "1024"
      worker2.cpus   = "2"
  end
 end
end

Vagrant.configure("2") do |config|
  config.vm.define "nfs" do |nfs|
    nfs.vm.box = "ubuntu/jammy64"
    nfs.vm.hostname = 'srv-nfs'
    nfs.vm.network "public_network", ip: "192.168.0.133", bridge: "Intel(R) Dual Band Wireless-AC 3165"
    nfs.vm.provision "shell",
      path: "nfs.sh"
    config.vm.provider "virtualbox" do |nfs|
      nfs.memory = "1024"
      nfs.cpus   = "2"
  end
 end
end