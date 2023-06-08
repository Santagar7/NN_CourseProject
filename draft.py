from flask import Flask, request, jsonify, render_template, Blueprint, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import UniqueConstraint
from flask_marshmallow import Marshmallow
from marshmallow import fields, validate
from datetime import datetime
from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
# Init app
app = Flask(__name__)

# Database
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:olena292003@localhost:3306/movierecommender'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Init db
db = SQLAlchemy(app)

# Init ma
ma = Marshmallow(app)

class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(64), index=True, unique=True)
    password_hash = db.Column(db.String(128))

    def set_password(self, password):
        self.password_hash = generate_password_hash(password)

    def check_password(self, password):
        return check_password_hash(self.password_hash, password)


@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        if User.query.filter_by(username=username).first():
            # User already exists
            pass
        else:
            user = User(username=username)
            user.set_password(password)
            db.session.add(user)
            db.session.commit()
            return redirect(url_for('login'))
    return render_template('register.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = User.query.filter_by(username=username).first()
        if user and user.check_password(password):
            login_user(user)
            return redirect(url_for('index'))
    return render_template('login.html')


login_manager = LoginManager(app)

@login_manager.user_loader
def load_user(id):
    return User.query.get(int(id))

# Rating Class/Model
class Rating(db.Model):
    __table_args__ = (UniqueConstraint('user_id', 'movie_id', name='user_movie_uc'),)
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, nullable=False)
    movie_id = db.Column(db.Integer, nullable=False)
    rating = db.Column(db.Float, nullable=False)
    timestamp = db.Column(db.BigInteger, nullable=False)  # Assuming timestamp is a Unix timestamp

    def __init__(self, user_id, movie_id, rating, timestamp):
        self.user_id = user_id
        self.movie_id = movie_id
        self.rating = rating
        self.timestamp = timestamp


# Rating Schema
class RatingSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Rating
        load_instance = True

    user_id = fields.Integer(required=True)
    movie_id = fields.Integer(required=True)
    rating = fields.Float(required=True, validate=validate.Range(min=0, max=5))


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

# Init schema
rating_schema = RatingSchema()
ratings_schema = RatingSchema(many=True)

rating_bp = Blueprint('rating', __name__)


@app.route('/')
def home():
    return render_template('home.html')


@app.route('/search', methods=['GET', 'POST'])
def search():
    if request.method == 'POST':
        search_query = request.form['search']
        movies = Movie.query.filter(Movie.title.ilike(f'%{search_query}%')).all()
        return render_template('search_results.html', movies=movies)
    return render_template('search.html')



# Get All Ratings
@rating_bp.route('/rating', methods=['GET'])
def get_ratings():
    all_ratings = Rating.query.all()
    result = ratings_schema.dump(all_ratings)
    return jsonify(result)


@app.route('/rating', methods=['POST'])
def add_rating():
    if current_user.is_authenticated:
        movie_id = int(request.form['movie_id'])
        rating = float(request.form['rating'])
        timestamp = datetime.now()
        new_rating = Rating(current_user.id, movie_id, rating, timestamp)

        db.session.add(new_rating)
        db.session.commit()

    return redirect(url_for('home'))  # Redirect to home page after successfully adding a rating


@app.route('/rating_form/<movie_id>', methods=['GET'])
def rating_form(movie_id):
    return render_template('rating_form.html', movie_id=movie_id)


# Get Single Ratings
@rating_bp.route('/rating/<id>', methods=['GET'])
def get_rating(id):
    rating = Rating.query.get(id)
    if not rating:
        return jsonify({"error": "Rating not found"}), 404

    return rating_schema.jsonify(rating)


# Update a Rating
@rating_bp.route('/rating/<id>', methods=['PUT'])
def update_rating(id):
    rating = Rating.query.get(id)
    if not rating:
        return jsonify({"error": "Rating not found"}), 404

    data = request.get_json()
    errors = rating_schema.validate(data)
    if errors:
        return jsonify(errors), 400

    for key, value in data.items():
        setattr(rating, key, value)

    db.session.commit()

    return rating_schema.jsonify(rating)


# Delete Rating
@rating_bp.route('/rating/<id>', methods=['DELETE'])
def delete_rating(id):
    rating = Rating.query.get(id)
    if not rating:
        return jsonify({"error": "Rating not found"}), 404

    db.session.delete(rating)
    db.session.commit()

    return rating_schema.jsonify(rating)




# Recommended Movies
# @app.route('/recommend/<user_id>', methods=['GET'])
# def recommend_movies(user_id):
#     # You need to implement the function get_recommendations() that uses the trained NCF model to generate movie recommendations
#     recommended_movies = get_recommendations(user_id)
#     return jsonify(recommended_movies)


# Run Server
if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)