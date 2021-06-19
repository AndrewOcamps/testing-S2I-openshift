from flask import Flask
import socket

app = Flask('__file__')

@app.route('/')
def index():
    return 'Hello from : ' + socket.gethostname() + '\n'

if __name__ == '__main__':
    app.run(host='0.0.0.0',port='8080')
