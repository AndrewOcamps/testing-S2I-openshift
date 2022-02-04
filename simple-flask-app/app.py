from flask import Flask
from config import ProductionConfig

app = Flask('__file__')

app.config.from_object(ProductionConfig())

@app.route("/")
def index():
    return app.config['MSG'] + 'Gerardo Ocampos build 2'

app.run(host='0.0.0.0')


