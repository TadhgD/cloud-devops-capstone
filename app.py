from flask import Flask


app = Flask(__name__)


@app.route('/')
def hello():
    return "<h3>Hello, Udacity! Welcome to my Capstone project.<h3>"

var=

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True) # Run on port 80
