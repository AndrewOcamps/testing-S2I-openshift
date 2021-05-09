# testing-S2I-openshift
This is a simple project to test S2I => https://access.redhat.com/documentation/en-us/red_hat_software_collections/2/html/using_red_hat_software_collections_container_images/sti

### Usage
#### Create app in Openshift
``` 
oc new-app -i openshift/python https://github.com/AndrewOcamps/testing-S2I-openshift --context-dir simple-flask-app --name=flask-app -l python=flask-app 
```
#### Modify service 
``` 
oc service flask-app edit     
Change default targetPort to 5000
```
#### Expose service
```
oc expose service flask-app
```

### Test connection with curl or your browser
