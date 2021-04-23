# Docker Workshop
Repositório dedicado ao workshop de Docker realizado na Codecon 2021.

Durante o workshop nós montamos uma _docker image_ capaz de executar o [Wordpress](https://br.wordpress.org/). Para isso utilizamos como imagem base `php:8.0-fpm` e instalamos mais algumas ferramentas que achamos pertinentes.

Após a criação dessa imagem com o `Dockerfile` utilizamos o `docker-compose` para criar os serviços de suporte necessários à nossa aplicação [Nginx](https://www.nginx.com/) e [Mysql](https://www.mysql.com/)

## Instalação
Certifique-se que o `Docker` e o `docker-compose` estão instalado na sua máquina rodando `docker -v` e `docker-compose -v`, depois:
1. Clone o repositório.
2. Crie a pasta `dbdata` na raiz do projeto.
3. Faça o [download do Wordpress](https://br.wordpress.org/latest-pt_BR.zip)
4. Descompacte e mova todos os arquivos e pastas para dentro da pasta do projeto.

Nesse ponto a estrutura de pastas do seu projeto deve estar assim:
```
dbdata
wordpress
.gitignore
docker-compose.yml
Dockerfile
site.conf
```

Por fim, execute o `docker-compose up -d`.

## Arquivos
[Dockerfile](https://github.com/leonimella/docker_workshop/blob/master/Dockerfile) - _Docker image_ utilizada para executar o Wordpress

[docker-compose.yml](https://github.com/leonimella/docker_workshop/blob/master/docker-compose.yml) - Declaração dos serviços de suporte ([Nginx](https://github.com/leonimella/docker_workshop/blob/master/docker-compose.yml#L10) e [Mysql](https://github.com/leonimella/docker_workshop/blob/master/docker-compose.yml#L19)) para o serviço principal. [Wordpress](https://github.com/leonimella/docker_workshop/blob/master/docker-compose.yml#L4) funcionar

[site.conf]() - Configuração do servidor Nginx necessário para gerenciar tráfego HTTP ao Wordpress

## Pastas
**dbdata** - Localização do [volume do container do Mysql](https://github.com/leonimella/docker_workshop/blob/master/docker-compose.yml#L25) utilizado em desenvolvimento

**wordpress** - Raíz da aplicação Wordpress

## Referências
- [Documentação Dockerfile](https://docs.docker.com/engine/reference/builder/)
- [Documentação docker-compose v3.0](https://docs.docker.com/compose/compose-file/compose-file-v3/)
- [Dockerhub](https://hub.docker.com/)
- [Docker e Docker Compose, um guia para iniciantes](https://dev.to/ingresse/docker-e-docker-compose-um-guia-para-iniciantes-48k8)
- [Workshop Gravado](https://youtu.be/M26U3OGBbW4)
