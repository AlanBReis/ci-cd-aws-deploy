# Usar a imagem base do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo de dependências (que está na pasta 'weather-app') para o diretório de trabalho do container
COPY weather-app/requirements.txt .

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo o conteúdo da pasta 'weather-app' para o container
COPY weather-app/ .

# Expor a porta em que o Flask vai rodar
EXPOSE 8000

# Comando para rodar a aplicação Flask
CMD ["python", "app.py"]
