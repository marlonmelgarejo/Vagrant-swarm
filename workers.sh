#! /bin/bash

# Instalar Docker
curl -fsSL https://get.docker.com | sh

# Adicionar permissão ao usuário vagrant
usermod -aG docker vagrant
newgrp docker

# Instalar ferramentas úteis e nfs client
sudo apt-get update
sudo apt-get install curl tree net-tools nfs-common -y

# Adicionar ao cluster como Worker
