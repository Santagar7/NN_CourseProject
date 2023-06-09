"""empty message

Revision ID: 7de17b67f3bd
Revises: d1e4440cdc18
Create Date: 2023-06-09 01:42:37.515647

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '7de17b67f3bd'
down_revision = 'd1e4440cdc18'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('movie',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('title', sa.String(length=128), nullable=False),
    sa.Column('release_date', sa.String(length=128), nullable=True),
    sa.Column('video_release_date', sa.String(length=128), nullable=True),
    sa.Column('imdb_url', sa.String(length=256), nullable=True),
    sa.Column('unknown', sa.Boolean(), nullable=True),
    sa.Column('action', sa.Boolean(), nullable=True),
    sa.Column('adventure', sa.Boolean(), nullable=True),
    sa.Column('animation', sa.Boolean(), nullable=True),
    sa.Column('children', sa.Boolean(), nullable=True),
    sa.Column('comedy', sa.Boolean(), nullable=True),
    sa.Column('crime', sa.Boolean(), nullable=True),
    sa.Column('documentary', sa.Boolean(), nullable=True),
    sa.Column('drama', sa.Boolean(), nullable=True),
    sa.Column('fantasy', sa.Boolean(), nullable=True),
    sa.Column('film_noir', sa.Boolean(), nullable=True),
    sa.Column('horror', sa.Boolean(), nullable=True),
    sa.Column('musical', sa.Boolean(), nullable=True),
    sa.Column('mystery', sa.Boolean(), nullable=True),
    sa.Column('romance', sa.Boolean(), nullable=True),
    sa.Column('sci_fi', sa.Boolean(), nullable=True),
    sa.Column('thriller', sa.Boolean(), nullable=True),
    sa.Column('war', sa.Boolean(), nullable=True),
    sa.Column('western', sa.Boolean(), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('rating',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('user_id', sa.Integer(), nullable=False),
    sa.Column('movie_id', sa.Integer(), nullable=False),
    sa.Column('rating', sa.Float(), nullable=False),
    sa.Column('timestamp', sa.BigInteger(), nullable=False),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('user_id', 'movie_id', name='user_movie_uc')
    )
    op.create_table('user',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('username', sa.String(length=64), nullable=True),
    sa.Column('password_hash', sa.String(length=128), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    with op.batch_alter_table('user', schema=None) as batch_op:
        batch_op.create_index(batch_op.f('ix_user_username'), ['username'], unique=True)

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('user', schema=None) as batch_op:
        batch_op.drop_index(batch_op.f('ix_user_username'))

    op.drop_table('user')
    op.drop_table('rating')
    op.drop_table('movie')
    # ### end Alembic commands ###
