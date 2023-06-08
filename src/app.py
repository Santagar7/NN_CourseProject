from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask_login import LoginManager
import routes
import auth


app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:olena292003@localhost:3306/movierecommender'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

ma = Marshmallow(app)

login_manager = LoginManager(app)

if __name__ == '__main__':
    with app.app_context():
        from models import *
        db.create_all()
    app.run(debug=True)