# Vagrant - CLuster Docker Swarm e Servidor NFS

- Versão utilizada do VirtualBox (7.0.2) e Vagrant (2.3.2)
- Os scripts criam e um cluster Docker Swarm com 1 manager e 2 workes; é criado também 1 servidor NFS para deploys futuros
- A instalação do Docker é feita pelo script de conveniência disponibilizado no site oficial e recomendado para ambientes de teste e desenvolvimento

# Siga os seguintes passos:

- Clone o repositório: git clone https://github.com/marlonmelgarejo/Vagrant-swarm
- Navegue até o diretório Vagrant-swarm
- Altere no arquivo Vagrantfile o que achar necessário, como por exemplo o "ip" e "bridge" (IP da sua rede interna e nome da placa da rede no seu note ou desktop)
- É necessário também alterar o IP no script manager.sh
- Execute para iniciar: vagrant up
- Após finalizar, execute para listar as VMs: vagrant status
- Caso queira verificar os nodes do swarm sem logar na VM execute: vagrant ssh manager -c "docker node ls"
- Para logar o manager: vagrant ssh manager
- Para remover o ambiente: vagrant destroy -f
- Lembre-se que os comandos devem ser executados no mesmo diretório do arquivo Vagrantfile
