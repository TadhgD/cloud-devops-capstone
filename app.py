from flask import Flask


app = Flask(__name__)


@app.route('/')
def hello():
    return "Hello, Udacity! Welcome to my Capstone project."


if __name__ == '__main__':
    app.run(port=80) # Run on port 80
