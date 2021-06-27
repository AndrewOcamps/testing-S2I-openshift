#!/bin/bash

# Gerardo Ocampos

sudo podman stop app
sudo podman rm app
sudo podman rmi localhost/gaoe/oc-appdb-app
