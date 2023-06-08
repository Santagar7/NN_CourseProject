from flask import Blueprint, render_template, request, jsonify, redirect, url_for
from datetime import datetime
from app import app, db
from models import Rating, Movie
from schemas import rating_schema, ratings_schema
from flask_login import login_required, current_user


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
@app.route('/rating', methods=['GET'])
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

