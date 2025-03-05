# Etapa 1: Escolha uma imagem base compatível
FROM python:3.13.2

# Etapa 2: Configurar o diretório de trabalho
WORKDIR /app

# Etapa 3: Copiar os arquivos do projeto para o contêiner
COPY pyproject.toml poetry.lock ./

# Etapa 4: Instalar o Poetry
RUN pip install poetry

# Etapa 5: Instalar dependências do projeto
RUN poetry install --no-root --no-interaction

# Etapa 6: Copiar o restante dos arquivos para o contêiner
COPY . .

# Etapa 7: Definir o comando padrão para execução
CMD ["poetry", "run", "python", "binance_prices_to_excel.py"]
