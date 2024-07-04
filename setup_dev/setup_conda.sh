#!/bin/bash

# Cria o diretório para Miniconda
mkdir -p ~/miniconda3

# Atualiza e faz upgrade dos pacotes
apt update && apt upgrade -y

# Instala o wget (se não estiver instalado)
apt install -y wget

# Baixa e instala o Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -f ~/miniconda3/miniconda.sh

# Inicializa o Conda 
~/miniconda3/bin/conda init bash

# Reinicia o terminal para que a instalação do conda tenha efeito
exec $SHELL