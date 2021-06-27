#!/bin/bash
# Gerardo Ocampos 2021

# Configura data directory
sudo rm -rf /var/local/mongo/
sudo mkdir -p /var/local/mongo/data
sudo semanage fcontext -a -t container_file_t '/var/local/mongo/data(/.*)?'
sudo restorecon -vvRF /var/local/mongo/
sudo chown 184:184 /var/local/mongo/data/

# Run Container
sudo podman run --name db -v "/var/local/mongo/data:/var/lib/mongodb/data" \
	-p 27017:27017 \
	-e MONGODB_USER=app -e MONGODB_PASSWORD=pass \
	-e MONGODB_DATABASE=appdb -e MONGODB_ADMIN_PASSWORD=root \
	-d registry.access.redhat.com/rhscl/mongodb-36-rhel7
