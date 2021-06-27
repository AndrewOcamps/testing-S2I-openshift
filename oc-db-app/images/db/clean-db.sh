#!/bin/bash

# Gerardo Ocampos 2021
sudo podman stop db
sudo podman rm db

sudo rm -rf /var/local/mongo
sudo podman rmi registry.access.redhat.com/rhscl/mongodb-36-rhel7


