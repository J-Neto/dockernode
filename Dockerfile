#### O que esta seção está fazendo:
### Copiando o package.json para dentro da pasta WORKDIR lá no container do Docker e executando o comando "npm install" com a versão "alpine" do node

## Qual versão de qual máquina utilizar
# Última versão do node
# Alpine: versão reduzida, com quase nenhuma funcionalidade do sistema operacional (sem sudo, etc) ... APENAS o NODE
FROM node:alpine

# Diretório dentro da máquina que irei trabalhar
WORKDIR /usr/app

# Copiando todos os arquivos que começam com "package" e terminam com "json"
COPY package*.json ./
RUN npm install

# Copiando o restante dos arquivos para o WORKDIR
# Obs: Ao executar "npm install", a node modules é criada, portanto usaremos ".dockerignore" para não copiar a "node_modules" para o WORKDIR do container
COPY . .

# Qual porta o servidor no docker precisa expor para esta máquina acessar
EXPOSE 3000

# Única por dockerfile
# Qual o comando que o servidor precisa rodar para que o mesmo "starte", inicie, fique no ar
# Dividindo o comando em um array
CMD ["npm", "start"]