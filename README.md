# Configuração do Docker Compose para Ambiente Multi-Banco de Dados

Este repositório contém uma configuração do Docker Compose para criar um ambiente multi-banco de dados. Ele utiliza containers Docker para executar simultaneamente bancos de dados MySQL, PostgreSQL e SQL Server, sendo ideal para desenvolvimento ou testes. Essa configuração permite iniciar rapidamente esses bancos de dados sem a necessidade de instalá-los individualmente.

## Pré-requisitos
Antes de começar, certifique-se de que o Docker e o Docker Compose estejam instalados em seu sistema. Você pode baixar e instalar o Docker a partir do site oficial: [Download do Docker](https://www.docker.com/get-started)



## Como usar

1. Clone este repositório para a sua máquina local:

   ```bash
   git clone https://github.com/jordhanfelix/docker-database
   ```

2. Abra um terminal e navegue até o diretório do projeto.

```bash
   cd seu-repo
   ```

3. Execute o comando a seguir para iniciar os serviços dos bancos de dados:

   ```bash
   docker-compose up -d
   ```
A opção -d executa os containers em segundo plano.

4. Uma vez que os containers estejam em execução, você pode acessar os bancos de dados usando os seguintes detalhes de conexão:

- **MySQL**:
  - Host: localhost
  - Porta: 3306
  - Banco de Dados: mysqldb
  - Usuário: root
  - Senha: root

- **PostgreSQL**:
  - Host: localhost
  - Porta: 5432
  - Banco de Dados: postgresdb
  - Usuário: postgres
  - Senha: postgres

- **SQL Server**:
  - Host: localhost
  - Porta: 1433
  - Banco de Dados: (Use o nome de banco de dados desejado)
  - Usuário: sa
  - Senha: admin@password


**Personalização**

- Se você desejar utilizar nomes de bancos de dados, nomes de usuários ou senhas diferentes, pode modificar as variáveis de ambiente correspondentes no arquivo `docker-compose.yml`.

- Ajuste as portas expostas, se necessário. Lembre-se de atualizar também os detalhes de conexão caso altere as mapeações de portas.

- A persistência dos dados é assegurada por meio de volumes Docker. Você pode modificar os nomes dos volumes no arquivo `docker-compose.yml`, se necessário.

**Notas Importantes**

- Essa configuração é destinada a fins de desenvolvimento ou testes e pode não ser adequada para ambientes de produção.

- Certifique-se de que as senhas escolhidas sejam seguras e não acessíveis publicamente.

- Sempre mantenha a sua instalação do Docker e as imagens atualizadas para se beneficiar das últimas correções de segurança.

**Agradecimentos**

Esta configuração do Docker Compose foi inspirada por diversos recursos e tutoriais online. Gostaríamos de expressar nossa gratidão aos autores e contribuidores que compartilharam seus conhecimentos e expertise.

**Colaboração**

Se você estiver interessado em colaborar e contribuir para a melhoria deste projeto, ficaremos felizes em receber suas contribuições! Seja para adicionar novos recursos, corrigir problemas ou otimizar o código, a sua participação é bem-vinda.

Para colaborar, siga os seguintes passos:

1. **Fork** este repositório para a sua própria conta.
2. Faça as alterações desejadas no seu fork.
3. Crie um **Pull Request** (PR) neste repositório original com uma descrição clara das suas mudanças e os motivos por trás delas.

Lembramos que todas as contribuições devem seguir os padrões de código, diretrizes e respeitar a licença MIT deste projeto.

Agradecemos antecipadamente por qualquer contribuição que você possa oferecer para tornar este projeto ainda melhor!

---

**Licença**

Este projeto está licenciado sob a Licença MIT.
