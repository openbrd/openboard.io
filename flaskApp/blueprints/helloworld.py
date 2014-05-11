__author__ = 'airead'

from flask.blueprints import Blueprint
from model.user import User

blueprint = Blueprint('helloworld', __name__, url_prefix='/helloworld')


@blueprint.route('/')
def index():
    return 'hello world'


@blueprint.route('/user')
def user():
    admin = user.User(1, 'Admin@')
    print admin
    return 'user'