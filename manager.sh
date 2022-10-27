#! /bin/bash

# Instalar Docker
curl -fsSL https://get.docker.com | sh

# Adicionar permissão ao usuário vagrant
usermod -aG docker vagrant
newgrp docker

# Criar um novo cluster Swarm
sudo docker swarm init --advertise-addr=192.168.0.130

# Recuperar token para adicionar workers no cluster
sudo docker swarm join-token worker | grep docker >> /vagrant/workers.sh

# Instalar ferramentas úteis e nfs client
sudo apt-get update
sudo apt-get install curl tree jq net-tools nfs-common -y