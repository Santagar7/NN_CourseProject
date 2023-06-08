import pandas as pd
from sqlalchemy import create_engine

rating = pd.read_csv('base_dataset/ml-100k/u.data', sep='\t', names=['user_id', 'movie_id', 'rating', 'timestamp'])

movie_cols = ['id', 'title', 'release_date', 'video_release_date', 'imdb_url',
              'unknown', 'Action', 'Adventure', 'Animation', "Children", 'Comedy',
              'Crime', 'Documentary', 'Drama', 'Fantasy', 'Film_Noir', 'Horror',
              'Musical', 'Mystery', 'Romance', 'Sci_Fi', 'Thriller', 'War', 'Western']

movie = pd.read_csv('base_dataset/ml-100k/u.item', sep='|', names=movie_cols, encoding='latin-1')

genre_cols = ['unknown', 'Action', 'Adventure', 'Animation', "Children", 'Comedy',
              'Crime', 'Documentary', 'Drama', 'Fantasy', 'Film_Noir', 'Horror',
              'Musical', 'Mystery', 'Romance', 'Sci_Fi', 'Thriller', 'War', 'Western']

for genre in genre_cols:
    movie[genre] = movie[genre].astype(bool)

engine = create_engine('mysql+pymysql://root:olena292003@localhost:3306/movierecommender')

rating.to_sql('rating', con=engine, index=False, if_exists='append')
movie.to_sql('movie', con=engine, index=False, if_exists='append')  