# Arquitetura de API RESTful com FastAPI (PoC)

## Objetivo Estrutural
Prova de Conceito (PoC) desenvolvida para demonstrar a implementação de roteamento assíncrono, estruturação de microsserviços e gestão de persistência de dados utilizando o ecossistema Python. O design foca em alta performance e geração de documentação automatizada via padrão OpenAPI.

## Stack Tecnológica
* **Linguagem:** Python 3
* **Framework Core:** FastAPI
* **Servidor ASGI:** Uvicorn
* **Banco de Dados:** PostgreSQL
* **ORM / Conector:** SQLAlchemy

## Topologia de Endpoints (CRUD)
* `GET /[nome-do-recurso]`: Retorna a listagem de registros.
* `POST /[nome-do-recurso]`: Realiza a ingestão e validação de novos dados.
* `GET /[nome-do-recurso]/{id}`: Executa consulta paramétrica por ID único.
* `DELETE /[nome-do-recurso]/{id}`: Executa a exclusão de registros específicos.

## Instruções de Execução (Ambiente Local)

1. Clonagem da infraestrutura:
`git clone [https://github.com/braian-data/https://github.com/braian-data/anotacoes-fastapi](https://github.com/braian-data/anotacoes-fastapi).git`

2. Instanciação do ambiente virtual:
`python -m venv venv`
`source venv/bin/activate` (Linux/Mac) ou `venv\Scripts\activate` (Windows)

3. Instalação de dependências:
`pip install -r requirements.txt`

4. Inicialização do servidor de aplicação:
`uvicorn main:app --reload`

A interface de teste da API (Swagger UI) será instanciada no endereço: `http://localhost:8000/docs`.
