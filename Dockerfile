# Usar a versão correta do Python
FROM python:3.13.2

# Definir o diretório de trabalho
WORKDIR /app

# Copiar apenas os arquivos essenciais para o Poetry
COPY pyproject.toml poetry.lock ./

# Instalar Poetry
RUN pip install poetry

# **Desativar o ambiente virtual do Poetry para instalar os pacotes globalmente**
ENV POETRY_VIRTUALENVS_CREATE=false

# Instalar dependências globalmente no contêiner
RUN poetry install --no-root --no-interaction

# Agora, copiar o código do projeto para o contêiner
COPY . .

# Garantir que o Python correto rode
CMD ["python", "binance_prices_to_excel.py"]
