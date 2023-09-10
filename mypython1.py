from flask import Flask, request
from flask import __version__ as fv

app = Flask(__name__)

@app.route('/')
def hello_world() -> str:
    name = request.args.get('name', 'World')
    return "Hello, {}!".format(name)

@app.route('/version')
def version() -> str:
    return "Flask version is {}.".format(fv)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')