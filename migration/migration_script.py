import pandas as pd
from sqlalchemy import create_engine

ratings = pd.read_csv('../base_dataset\ml-100k/u.data', sep='\t', names=['user_id', 'movie_id', 'rating', 'timestamp'])

movie_cols = ['movie_id', 'title', 'release_date', 'video_release_date', 'imdb_url',
              'unknown', 'Action', 'Adventure', 'Animation', "Children's", 'Comedy',
              'Crime', 'Documentary', 'Drama', 'Fantasy', 'Film-Noir', 'Horror',
              'Musical', 'Mystery', 'Romance', 'Sci-Fi', 'Thriller', 'War', 'Western']

movies = pd.read_csv('../base_dataset\ml-100k/u.item', sep='|', names=movie_cols, encoding='latin-1')

genre_cols = ['unknown', 'Action', 'Adventure', 'Animation', "Children's", 'Comedy',
              'Crime', 'Documentary', 'Drama', 'Fantasy', 'Film-Noir', 'Horror',
              'Musical', 'Mystery', 'Romance', 'Sci-Fi', 'Thriller', 'War', 'Western']

for genre in genre_cols:
    movies[genre] = movies[genre].astype(bool)

engine = create_engine('mysql+pymysql://root:olena292003@localhost:3306/movierecommender')

ratings.to_sql('ratings', con=engine, index=False, if_exists='append')
movies.to_sql('movies', con=engine, index=False, if_exists='append')  