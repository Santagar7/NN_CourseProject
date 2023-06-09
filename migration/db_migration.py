from src.app import create_app, db
from flask_migrate import Migrate
from flask_script import Manager

app = create_app()

