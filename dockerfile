FROM python:3.11-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1 
# Otimização de Disco, toda vez que executa .py, compila o cod em bytecode e salva .pyc dentro de dir. chamados __pycache__.
# =1 significa que não vai salvar o bytecode em disco, mas vai compilar na memória e executar, economizando espaço em disco e tempo de execução
ENV PYTHONUNBUFFERED=1
# Entrega Instantânea de Logs. O Python armazena saídas padrão de texto (stdout e stderr, como comandos print() ou erros de inicialização) em uma fila na memória RAM (buffer).
# Ele só descarrega esse texto no terminal quando o buffer atinge um tamanho limite ou o processo é finalizado.
# =1 (Flag ativa). Desativa completamente o buffer. Todo e qualquer log ou mensagem de erro gerada pelo FastAPI/Uvicorn é despejada imediatamente no terminal do Docker Desktop/VS Code.

RUN apt-get update && apt-get install -y --no-install-recommends gcc libpq-dev && rm -rf /var/lib/apt/lists/*
# rm -rf /var/lib/apt/lists/* -> remove arquivos temporários do apt-get, liberando espaço em disco.

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]