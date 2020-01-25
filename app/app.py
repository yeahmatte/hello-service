from flask import Flask
from flask import request
import json

#Flask-Cognito

app = Flask(__name__)

#@cogauth.identity_handler
#def lookup_cognito_user(payload):
#    """Look up user in our database from Cognito JWT payload."""
#    return User.query.filter(User.cognito_username == payload['username']).one_or_none()

@app.route('/')
def hello():
    return "{}".format(request.headers)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
