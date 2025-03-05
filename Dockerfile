# Usar uma imagem oficial do Python
FROM python:3.13.2

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos do projeto para o container
COPY . .

# Instalar dependências do projeto (incluindo requests e openpyxl)
RUN pip install poetry && poetry install

# Comando para executar o script automaticamente ao iniciar o container
CMD ["python", "binance_prices_to_excel.py"]
