from werkzeug.security import generate_password_hash, check_password_hash
from sqlalchemy import UniqueConstraint
from flask_login import UserMixin
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(64), index=True, unique=True)
    password_hash = db.Column(db.String(128))

    def set_password(self, password):
        self.password_hash = generate_password_hash(password)

    def check_password(self, password):
        return check_password_hash(self.password_hash, password)

    def __init__(self, username):
        self.username = username


class Rating(db.Model):
    __table_args__ = (UniqueConstraint('user_id', 'movie_id', name='user_movie_uc'),)
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, nullable=False)
    movie_id = db.Column(db.Integer, nullable=False)
    rating = db.Column(db.Float, nullable=False)
    timestamp = db.Column(db.BigInteger, nullable=False)

    def __init__(self, user_id, movie_id, rating, timestamp):
        self.user_id = user_id
        self.movie_id = movie_id
        self.rating = rating
        self.timestamp = timestamp


class Movie(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(128), nullable=False)
    release_date = db.Column(db.String(128), nullable=True)
    video_release_date = db.Column(db.String(128), nullable=True)
    imdb_url = db.Column(db.String(256), nullable=True)
    unknown = db.Column(db.Boolean, default=False)
    action = db.Column(db.Boolean, default=False)
    adventure = db.Column(db.Boolean, default=False)
    animation = db.Column(db.Boolean, default=False)
    children = db.Column(db.Boolean, default=False)
    comedy = db.Column(db.Boolean, default=False)
    crime = db.Column(db.Boolean, default=False)
    documentary = db.Column(db.Boolean, default=False)
    drama = db.Column(db.Boolean, default=False)
    fantasy = db.Column(db.Boolean, default=False)
    film_noir = db.Column(db.Boolean, default=False)
    horror = db.Column(db.Boolean, default=False)
    musical = db.Column(db.Boolean, default=False)
    mystery = db.Column(db.Boolean, default=False)
    romance = db.Column(db.Boolean, default=False)
    sci_fi = db.Column(db.Boolean, default=False)
    thriller = db.Column(db.Boolean, default=False)
    war = db.Column(db.Boolean, default=False)
    western = db.Column(db.Boolean, default=False)

