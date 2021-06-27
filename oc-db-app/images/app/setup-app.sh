#!/bin/bash

# Gerardo Ocampos 2021

sudo podman build -t gaoe/oc-appdb-app .
sudo podman run --name app -p 8080:8080 \
	-e MONGO_DB=appdb -e MONGO_USER=app -e MONGO_PASS=pass \
	-e MONGO_HOST=192.168.33.180 \
	-d localhost/gaoe/oc-appdb-app
