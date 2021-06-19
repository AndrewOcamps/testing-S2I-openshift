#!/bin/bash

# Gerardo Ocampos

# vars
LOGIN_USER=andrewocamps
IMAGE=quay.io/$LOGIN_USER/oc-python-app

sudo podman run --name python-app -p 8080:8080 -d $IMAGE