# configurar o motor de conexão com o PostgreSQL

from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker

# Credenciais configuradas no docker-compose.yml
SQLALCHEMY_DATABASE_URL = "postgresql://admin:adminpassword@localhost:5432/anotacoes"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()