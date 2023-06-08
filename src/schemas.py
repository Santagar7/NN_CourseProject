from app import ma
from marshmallow import fields, validate
from models import Rating


class RatingSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Rating
        load_instance = True

    user_id = fields.Integer(required=True)
    movie_id = fields.Integer(required=True)
    rating = fields.Float(required=True, validate=validate.Range(min=0, max=5))