# Database Services with Docker Compose

Este projeto fornece um ambiente Docker Compose para executar três tipos de bancos de dados: MySQL, PostgreSQL e SQL Server. Cada serviço de banco de dados é isolado em um contêiner individual e possui volumes persistentes para armazenar dados.

## Pré-requisitos

- Docker e Docker Compose instalados no seu sistema.
- Ambiente WSL2 para uso no Windows.

## Como usar

1. Clone este repositório para o seu sistema.

2. Abra um terminal e navegue até o diretório do projeto.

3. Execute o comando a seguir para iniciar os serviços dos bancos de dados:

   ```bash
   docker-compose up -d