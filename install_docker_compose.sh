#!/bin/bash

echo "Executado arquivo bash para instalar o docker"

### ETAPA 1 - INSTALAÇÃO ###
# ATUALIZAR O SISTEMA
sudo apt update && sudo apt upgrade

# INSTALAR PACOTES BÁSICOS
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# adicione a chave GPG para o repositório oficial do Docker no seu sistema:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adicione o repositório do Docker às fontes do APT:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# ATUALIZAR
sudo apt update

# CONSULTAR
apt-cache policy docker-ce

#INSTALAR
sudo apt install docker-ce

#CONFERIR
sudo systemctl status docker


### ETAPA 2 - CONFIGURAR USUÁRIO ###
# USUÁRIOS: caso não seja root, ou seja usuário não adicionado no grupo docker, haverá o seguinte erro:
#Output
#docker: Cannot connect to the Docker daemon. Is the docker daemon running on this host?.
#See 'docker run --help'.

# ADICIONAR USUARIO LOGADO AO GRUP DOCKER:
sudo usermod -aG docker ${USER}
# CONFERIR:
id -nG

echo "Executado arquivo bash para instalar o docker-compose"
### ETAPA 3 - INSTALAR O COMPOSE ##
# após docker instalado

sudo apt update
sudo apt install docker-compose

# saber versão
docker-compose version
