""" This application host the gerator function
    as web application.
    - sample application to test the functionality of
    various tools associated with python.
"""
import os
from flask import Flask
from buzz import generator

app = Flask(__name__)

app.route("/")
def generate_buzz():
    """ converts generator function to
        web application using flask.
    """
    page = '<html><body><h1>'
    page += generator.generate_buzz()
    page += '</h1></body></html>'
    return page

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=int(os.getenv('PORT', 5000)))
