#!/bin/bash

# Atualiza o Conda para a versão mais recente
conda update conda

# Atualiza todos os pacotes Conda para as versões mais recentes
conda update --all

# Cria um novo ambiente Conda chamado 'dev' com Python 3.11, TensorFlow e Pandas instalados
conda create --name dev -y python=3.11 tensorflow pandas