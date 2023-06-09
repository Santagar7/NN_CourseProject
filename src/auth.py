from flask import render_template, request, redirect, url_for, flash
from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import login_user, logout_user, login_required, current_user
from app import db, create_app, login_manager
from models import User
from forms import LoginForm, RegisterForm

app = create_app()


@login_manager.user_loader
def load_user(id):
    return User.query.get(int(id))
