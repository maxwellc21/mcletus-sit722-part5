import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Fetching the DATABASE_URL from environment variables
DATABASE_URL = os.getenv('DATABASE_URL')

# Creating the SQLAlchemy engine to connect to the PostgreSQL database
engine = create_engine(DATABASE_URL)

# Creating a configured "Session" class
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Base class for our models to inherit from
Base = declarative_base()

# Dependency to get the database session
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
