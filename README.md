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

## Acesso através do IP do Linux no WSL2
Para acessar os contêineres de banco de dados em execução através do IP do seu Linux no WSL2, siga estas etapas:

1. Use os seguintes comandos para obter os IPs dos contêineres:

## MySQL:

   ```bash
   docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql
   ```
## PostgreSQL:

   ```bash
   docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' postgres
   ```
## SQL Server:

   ```bash
   docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sqlserver
   ```
Com os IPs dos contêineres em mãos, você pode configurar o redirecionamento de portas usando o comando socat. 

2. Instale o socat usando o seguinte comando:

   ```bash
   sudo apt-get update
   sudo apt-get install socat
   ```

   Agora, você pode configurar o redirecionamento de portas para cada banco de dados. 

3. Configure o redirecionamento de portas substituindo <CONTAINER_IP> pelo IP específico do contêiner:
##  MySQL:

   ```bash
   socat TCP-LISTEN:3306,fork TCP:<CONTAINER_IP>:3306
   ```
## PostgreSQL:

   ```bash
   socat TCP-LISTEN:5432,fork TCP:<CONTAINER_IP>:5432
   ```
## SQL Server:

   ```bash
   socat TCP-LISTEN:1433,fork TCP:<CONTAINER_IP>:1433
   ```

Isso criará um redirecionamento de porta do IP do seu WSL2 para o IP do contêiner. Agora você poderá acessar os bancos de dados usando os IPs do WSL2. Certifique-se de manter esses comandos em execução para que o redirecionamento de portas seja mantido.

Lembre-se de que essa solução de redirecionamento de portas é útil para acesso local e para fins de desenvolvimento. Se você precisar de acesso a partir de outros dispositivos ou em um ambiente de produção, pode ser necessário configurar as redes do Docker de forma mais avançada ou usar soluções de proxy reverso.

## Parar os serviços

```bash
   docker-compose down
   ```
Lembre-se de que as informações de conexão (host, porta, nome de usuário, senha) podem variar dependendo das configurações do seu ambiente Docker