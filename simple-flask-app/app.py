from flask import Flask
from config import ProductionConfig
import platform
import socket

app = Flask('__file__')

app.config.from_object(ProductionConfig())

@app.route("/")
def index():
    os_version = platform.system()
    os_ipaddr = socket.gethostbyname(socket.gethostname()) 
    return app.config['MSG'] + os_version  + ' ' +  os_ipaddr

app.run(host='0.0.0.0')


