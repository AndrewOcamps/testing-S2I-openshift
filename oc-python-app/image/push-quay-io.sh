#!/bin/bash

# Gerardo Ocampos

# vars
LOGIN_USER=andrewocamps
read -s -p "Account Password: " LOGIN_PASS

sudo podman build -t quay.io/$LOGIN_USER/oc-python-app:latest .
sudo podman login quay.io --username $LOGIN_USER --password $LOGIN_PASS
sudo podman push quay.io/$LOGIN_USER/oc-python-app
