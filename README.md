# CI/CD Pipeline para Aplicação Web com Deploy na AWS

Este projeto demonstra a implementação de um pipeline CI/CD para uma aplicação web simples usando Flask ou Express e Docker, com deploy automatizado na AWS utilizando GitHub Actions, Terraform e Ansible. O objetivo é mostrar como automatizar a construção, testes, criação de imagem Docker e deploy, utilizando as melhores práticas de DevOps.

## Funcionalidades

- Automação de build e testes com GitHub Actions
- Linting e análise de qualidade de código
- Criação de imagem Docker e push para Docker Hub
- Deploy automatizado na AWS (EC2, S3, RDS/DynamoDB)
- Provisionamento de infraestrutura com Terraform
- Configuração de servidores com Ansible
- Integração com Slack, Microsoft Teams ou e-mail (via SendGrid/AWS SES) para notificações de build e deploy
- Testes de segurança automatizados

## Tecnologias Utilizadas

- **Linguagem/Framework**: Flask (Python) ou Express (Node.js)
- **Docker**: Para containerização da aplicação
- **GitHub Actions**: Para automação do pipeline CI/CD
- **Terraform**: Para provisionamento de infraestrutura como código (EC2, RDS, S3, etc.)
- **Ansible**: Para automação e configuração de servidores
- **AWS**:
  - **EC2**: Para hospedar o backend da aplicação
  - **S3**: (Opcional) Para hospedar o frontend estático
  - **RDS** ou **DynamoDB**: Para gerenciamento de banco de dados
- **Notificações**:
  - **Slack** ou **Microsoft Teams**: Para notificações de build e deploy
  - **E-mail**: Integração com SendGrid ou AWS SES

## Como Executar Localmente

### Pré-requisitos

Certifique-se de ter o Docker, Docker Compose, Terraform e Ansible instalados em sua máquina.

### Passo a Passo

1. Clone o repositório:
   ```bash
   git clone https://github.com/seuusuario/ci-cd-aws-deploy.git

2. Acesse o diretório do projeto:
    ```bash
    cd ci-cd-aws-deploy
    ```
3. Configure as variáveis de ambiente no arquivo `.env` (veja o exemplo no `.env.example`).
4. Construa e execute os containers Docker:
    ```bash
    docker-compose up --build
    ```
5. Acesse a aplicação em `http://localhost:8000`.

## Pipeline CI/CD
O workflow do GitHub Actions executa as seguintes etapas:
1. **Build:** Construção da aplicação.
2. **Testes:** Execução de testes automatizados.
3. **Linting:** Verificação de qualidade do código com ferramentas como ESLint ou Flake8.
4. **Imagem Docker:** Criação e push da imagem para o Docker Hub.
5. **Provisionamento de Infraestrutura com Terraform:** Cria a infraestrutura na AWS, como instâncias EC2, banco de dados RDS ou DynamoDB, e buckets S3.
6. **Configuração de Servidores com Ansible:** Após o provisionamento, o Ansible é usado para configurar as instâncias EC2, instalando dependências como Docker e preparando o ambiente para o deploy.
7. **Deploy Automatizado:** Deploy na AWS usando EC2 e banco de dados (RDS ou DynamoDB).
8. **Notificações:** Envia status das builds e deploys para Slack, Microsoft Teams ou via e-mail.

## O pipeline CI/CD é gerenciado pelo GitHub Actions e executa as seguintes etapas:

1. **Build**: Constrói a aplicação.
2. **Testes Automatizados**: Executa os testes com pytest (ou outro framework de testes).
3. **Linting**: Verifica a qualidade do código.
4. **Criação de Imagem Docker**: Cria a imagem Docker e faz o push para o Docker Hub.
5. **Provisionamento de Infraestrutura com Terraform**: Cria a infraestrutura na AWS (EC2, RDS/DynamoDB, S3).
6. **Configuração de Servidores com Ansible**: Configura as instâncias EC2 após provisionadas.
7. **Deploy Automatizado**: Realiza o deploy da aplicação nas instâncias EC2.
8. **Notificações**: Envia notificações para Slack, Teams ou e-mail.

Para ver o arquivo completo do workflow, [clique aqui](link-para-o-main.yml).


## Deploy na AWS
1. **EC2:** A aplicação backend será hospedada em uma instância EC2. O deploy automatizado é feito através do pipeline CI/CD do GitHub Actions, com infraestrutura provisionada por Terraform e configurada por Ansible.
2. **RDS/DynamoDB:** O banco de dados pode ser configurado usando o AWS RDS (relacional) ou DynamoDB (NoSQL), de acordo com as necessidades da aplicação.
3. **S3:** Para hospedar o frontend.

## Notificações
As notificações podem ser enviadas para diferentes plataformas:

Slack: Notifica o status da build e deploy em um canal do Slack.
Microsoft Teams: Notificações semelhantes para o Teams.
E-mail: Configurado através de serviços como SendGrid ou AWS SES para enviar atualizações sobre o pipeline por e-mail.
Testes de Segurança
Testes de segurança são uma parte importante do pipeline CI/CD. Utilize ferramentas como OWASP ZAP ou Snyk para verificar vulnerabilidades na aplicação.

## Como Contribuir
1. Fork o projeto.
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`).
3. Faça o commit das suas alterações (`git commit -m 'Adiciona nova funcionalidade'`).
4. Envie para o repositório remoto (`git push origin feature/nova-funcionalidade`).
5. Crie um Pull Request.

## Licença
Este projeto está licenciado sob a [MIT License](./LICENSE).

