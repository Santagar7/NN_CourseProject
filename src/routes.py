import pandas as pd

from app import create_app, db, login_manager
from models import User, Rating, Movie
from schemas import RatingSchema
from flask import render_template, request, redirect, url_for, jsonify
from datetime import datetime
from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import UserMixin, login_user, login_required, logout_user, current_user
from auth import *
from src.forms import RatingForm
from keras.models import load_model
import numpy as np


app = create_app()
model = load_model('C:\\Users\\dobis\\OneDrive\\itrytostudy\\nn\\app\\NN_CourseProject\\src\\model\\ncf_model')
rating_schema = RatingSchema()
ratings_schema = RatingSchema(many=True)

def transform_genres(movie):
    genres = []
    genre_mapping = {
        'unknown': 'unknown',
        'Action': 'Action',
        'Adventure': 'Adventure',
        'Animation': 'Animation',
        "Children's": '_10',
        'Comedy': 'Comedy',
        'Crime': 'Crime',
        'Documentary': 'Documentary',
        'Drama': 'Drama',
        'Fantasy': 'Fantasy',
        'Film-Noir': '_16',
        'Horror': 'Horror',
        'Musical': 'Musical',
        'Mystery': 'Mystery',
        'Romance': 'Romance',
        'Sci-Fi': '_21',
        'Thriller': 'Thriller',
        'War': 'War',
        'Western': 'Western'
    }
    for old_genre, new_genre in genre_mapping.items():
        if getattr(movie, new_genre):
            genres.append(old_genre)
    return ', '.join(genres)


def recommend_movies(user_id, num_recommendations):
    # Load the trained model

    # Get all users and movies from the DB
    all_users = [user.id for user in User.query.order_by(User.id).all()]
    all_movies = [movie.id for movie in Movie.query.order_by(Movie.id).all()]

    # Create the encoding dictionaries for new users and all movies
    user2user_encoded = {x: i for i, x in enumerate(all_users)}
    movie2movie_encoded = {x: i for i, x in enumerate(all_movies)}
    user_encoded2user = {i: user_id for user_id, i in user2user_encoded.items()}
    movie_encoded2movie = {i: movie_id for movie_id, i in movie2movie_encoded.items()}

    # Get the encoded user
    encoded_user = user2user_encoded[user_id]

    # Get all the movies not watched by the user
    user_ratings = Rating.query.with_entities(Rating.movie_id).filter_by(user_id=user_id).all()
    watched_movie_ids = [rating.movie_id for rating in user_ratings]

    not_watched_movies = Movie.query.filter(~Movie.id.in_(watched_movie_ids)).all()
    movies_not_watched = [movie2movie_encoded[movie.id] for movie in not_watched_movies]

    # Prepare inputs for the model
    user_encoder = np.array([encoded_user] * len(movies_not_watched)).reshape(-1, 1)
    movies_not_watched = np.array(movies_not_watched).reshape(-1, 1)

    # Predict the ratings for not watched movies
    ratings_predicted = model.predict([user_encoder, movies_not_watched])

    # Combine movie IDs, titles, and predicted ratings
    movie_ids = [movie.id for movie in not_watched_movies]
    movie_titles = [movie.title for movie in not_watched_movies]  # replace 'title' with your actual field name
    movie_ratings = list(ratings_predicted.flatten())

    # Create a data frame
    movie_df = pd.DataFrame(zip(movie_ids, movie_titles, movie_ratings),
                            columns=["Movie_ID", "Title", "Predicted_Rating"])

    # Get the top rated movies
    recommended_movies_df = movie_df.sort_values(by="Predicted_Rating", ascending=False).head(num_recommendations)

    return recommended_movies_df


@app.route('/')
@login_required
def home():
    return render_template('home.html')


@app.route('/search', methods=['GET', 'POST'])
@login_required
def search():
    if request.method == 'POST':
        search_query = request.form['search']
        movies = Movie.query.filter(Movie.title.ilike(f'%{search_query}%')).all()
        return render_template('search_results.html', movies=movies)
    return render_template('search.html')


# Get All Ratings
@app.route('/rating', methods=['GET'])
@login_required
def get_ratings():
    all_ratings = Rating.query.all()
    result = ratings_schema.dump(all_ratings)
    return jsonify(result)


@app.route('/rating/<movie_id>', methods=['GET', 'POST'])
@login_required
def rating(movie_id):
    form = RatingForm()
    if form.validate_on_submit():
        rating = Rating(
            user_id=current_user.id,
            movie_id=movie_id,
            rating=form.rating.data,
            timestamp=datetime.now().timestamp()
        )
        db.session.add(rating)
        db.session.commit()
        return redirect(url_for('home'))
    return render_template('rating_form.html', form=form)


@app.route('/rating_form/<movie_id>', methods=['GET'])
@login_required
def rating_form(movie_id):
    return redirect(url_for('rating', movie_id=movie_id))


@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user and check_password_hash(user.password_hash, form.password.data):
            login_user(user)
            flash('Login successful.')
            return redirect(url_for('home'))
        else:
            flash('Invalid username or password.')
    return render_template('login.html', form=form)


@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegisterForm()
    if form.validate_on_submit():
        existing_user = User.query.filter_by(username=form.username.data).first()
        if existing_user is None:
            user = User(username=form.username.data)
            user.set_password(form.password.data)
            db.session.add(user)
            db.session.commit()
            login_user(user)
            flash('Registration successful.')
            return redirect(url_for('home'))
        flash('A user already exists with that username.')
    return render_template('register.html', form=form)


@app.route('/recommend', methods=['GET'])
@login_required
def recommend():
    num_recommendations = 10  # or any other number you want
    user_id = current_user.id
    recommended_movies_df = recommend_movies(user_id, num_recommendations)

    # Transform recommended movies DataFrame into a list of dictionaries for easy processing in the template
    movies_list = recommended_movies_df.to_dict('records')

    return render_template('recommendations.html', movies=movies_list)

if __name__ == '__main__':
    app.run(debug=True)
