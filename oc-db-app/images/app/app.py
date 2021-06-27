from flask import Flask
import pymongo
from flask import jsonify
import os

app = Flask(__name__)
MONGO_DB = os.environ['MONGO_DB']
MONGO_USER = os.environ['MONGO_USER']
MONGO_PASS = os.environ['MONGO_PASS']
MONGO_HOST = os.environ['MONGO_HOST']
mongo = pymongo.MongoClient(MONGO_HOST, username=MONGO_USER, password=MONGO_PASS, authSource=MONGO_DB)


@app.route("/")
def home():
    db = mongo.appdb
    users = db.users
    user = users.find_one({"name": "Gerardo"})
    return jsonify({"connection": user['status'], "name": user['name'], "age": user['age']})

@app.route("/create")
def create():
    db = mongo.appdb
    users = db.users
    user = users.insert_one({"name": "Gerardo", "age": 24, "status": "ok"})
    return jsonify({"result": "OK"})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port="8080")
