# Define a imagem base a ser utilizada como ponto de partida
FROM lucasdiasnoronha/ubuntu-conda-ml-env:v1

# Cria um diretório chamado 'my_model' dentro do diretório '/root'
RUN mkdir /root/my_model

# Define '/root/my_model' como um volume, permitindo persistência de dados
VOLUME /root/my_model

# Copia todos os arquivos do diretório local './Code/' para '/root/my_model/' no contêiner
COPY ./Code/. /root/my_model/

# Define '/root/my_model' como o diretório de trabalho padrão para comandos subsequentes
WORKDIR /root/my_model

# Comando a ser executado ao iniciar o contêiner
CMD ["python3", "code_file2.py"]