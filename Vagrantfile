VAGRANTFILE_API_VERSION = "2"
HOME=File.join(File.dirname(__FILE__), '../')

# Optional check for minimum Vagrant version
Vagrant.require_version ">=1.9.1"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.provider "virtualbox" do |v|
    v.cpus = 1
    v.memory = 1024
  end


  ### PORT FORWARDING ###

  # HTTP
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # HTTPS
  config.vm.network "forwarded_port", guest: 443, host: 443

  # SSH
  config.vm.network "forwarded_port", guest: 22, host: 22

  # Docker registry
  config.vm.network "forwarded_port", guest: 5000, host: 5000

  # Other useful ports
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 9000, host: 9000

  # MongoDB
  config.vm.network "forwarded_port", guest: 27017, host: 27017

  # MySQL
  config.vm.network "forwarded_port", guest: 3306, host: 3306

  # Redis
  config.vm.network "forwarded_port", guest: 6379, host: 6379

  # RabbitMQ
  config.vm.network "forwarded_port", guest: 15672, host: 15672

  # PostgreSQL
  config.vm.network "forwarded_port", guest: 5432, host: 5432

  # Elastic Search
  config.vm.network "forwarded_port", guest: 9200, host: 9200

  # Logstash
  config.vm.network "forwarded_port", guest: 9300, host: 9300

  # Kibana
  config.vm.network "forwarded_port", guest: 5601, host: 5601


  ### HOSTNAME ###

  # Letter, number, hyphens and dots
  config.vm.hostname = "appname-vm"


  ### IP ADDRESS ###

  # config.vm.network "public_network", ip: "192.168.0.200", bridge: "en0: Wi-Fi (AirPort)"
  config.vm.network :public_network, ip: "192.168.0.200"
  # Note: bridge interface might be different on various hosts.
  # If Vagrant fails to start the machine, just delete bridge property above.
  # Alternatively option for private networking:
  # config.vm.network :private_network, ip: "192.168.0.200"


  ### SYNCED FOLDERS ###

  # By default, current host folder is synced to /vagrant
  # Alternatively: config.vm.synced_folder "appconfig/", "/var/appconfig/"
  # First argument is host folder, second is guest folder


  ### PROVISIONING ###

  config.vm.provision "shell", path: "provision/create_data_paths.sh"
  config.vm.provision "shell", path: "provision/install_docker.sh"
  config.vm.provision "shell", path: "provision/install_docker_compose.sh"
  config.vm.provision "shell", path: "provision/set_env_vars.sh"

end
