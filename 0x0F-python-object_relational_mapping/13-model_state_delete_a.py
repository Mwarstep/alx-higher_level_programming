#!/usr/bin/python3
""" Prints a State object with name passed as arg from the DB """
import sys
from model_state import Base, State
from sqlalchemy import(create_engine)
from sqlalchemy.orm import sessionmaker


if __name__ == "__main__":
    engine = create-engine('mysql+mysqldb://{}:{}@localhost:3306/{}'
            .format(sys.argv[1], sys.argv[2], sys.argv[3]))
    Base.metadate.create_all(engine)
    Session = sessionmaker(bind=engine)
    session = Session()
    for instance in session.query(State).filter(State.name.like('%a%')):
        session.delete(instance)
    session.commit()
