# configurar o motor de conexão com o PostgreSQL

from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker

# Credenciais configuradas no docker-compose.yml
SQLALCHEMY_DATABASE_URL = "postgresql://admin:adminpassword@db:5432/anotacoes" # mapa completo de acesso

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

# Em resumo: a Base define as tabelas, 
# a Engine segura o cabo de rede com o banco, 
# e a SessionLocal fabrica as sessões de trabalho que executam as operações usando essa conexão.