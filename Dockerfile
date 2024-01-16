## base da nossa imagem
FROM node:20.1-alpine
## cria a pasta e um cd na sequência.
LABEL authors = "Lucas Santos"
WORKDIR  /app
COPY package*.json  .
# executa o comando para construção da imagem.
RUN npm install 
COPY .  .

RUN npm install

## estamos expondo a porta que será usando no momento que o container for executado.
EXPOSE 8080

## só será executando quando o container for executado.
CMD [ "node", "server.js" ]

## Opções de uso do dockerfile 
##  FROM - Inicia o build de uma imagem a partir de uma imagem base
## WORKDIR - Define o diretório corrente
## RUN - Executa o comando.
## LABEL - Adiciona metadados a imagem
## ENV -> DEFINE variáveis de ambiente
## COPY - copia arquivos ou diretórios e adiciona ao sistema de arquivos da imagem.
## ADD -> copia arquivos ou diretórios ou arquivos remotos e adiciona ao sistema de arquivos da imagem.
## CMD -> Define um argumento para ser usado no processo de construção
## ARG - Define um argumento para ser usado no processo de construção.
## ENTRYPOINT -> Ajuda você a configurar o container que pode ser executado como um executado
## VOLUMES -> Define volumes que devem ser definidos.