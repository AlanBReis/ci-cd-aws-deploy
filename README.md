# CI/CD Pipeline para Aplicação Web com Deploy na AWS

## Descrição
Este projeto demonstra a implementação de um pipeline CI/CD para uma aplicação web simples usando [Flask/Express] e Docker, com deploy automatizado na AWS utilizando GitHub Actions. O objetivo é mostrar como automatizar a construção, testes, criação de imagem Docker e deploy, utilizando as melhores práticas de DevOps.

## Funcionalidades
- Automação de build e testes
- Linting e análise de código
- Criação de imagem Docker e push para Docker Hub
- Deploy automatizado na AWS (EC2, S3, RDS/DynamoDB)
- Integração com Slack para notificações sobre builds e deploys
- Testes de segurança automatizados

## Tecnologias Utilizadas
- **Linguagem/Framework:** Flask (Python) ou Express (Node.js)
- **Docker:** Para containerização da aplicação
- **GitHub Actions:** Para automação do pipeline CI/CD
- **AWS:** EC2 para aplicação, S3 para frontend e RDS/DynamoDB para banco de dados
- **Slack ou Microsoft Teams:** Para notificações

## Como Executar Localmente
1. Clone o repositório:
    ```bash
    git clone https://github.com/seuusuario/ci-cd-aws-deploy.git
    ```
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
5. **Deploy Automatizado:** Deploy na AWS usando EC2 e banco de dados (RDS ou DynamoDB).
6. **Notificações:** Envio de status das builds para o Slack ou Microsoft Teams.

## Deploy na AWS
1. **EC2:** Hospeda o backend.
2. **RDS/DynamoDB:** Gerencia o banco de dados.
3. **S3:** (Opcional) Para hospedar o frontend.

## Como Contribuir
1. Fork o projeto.
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`).
3. Faça o commit das suas alterações (`git commit -m 'Adiciona nova funcionalidade'`).
4. Envie para o repositório remoto (`git push origin feature/nova-funcionalidade`).
5. Crie um Pull Request.

## Licença
Este projeto está licenciado sob a [MIT License](./LICENSE).

