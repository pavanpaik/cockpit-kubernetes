# Cockpit CDN on Kubernetes

This project can be used to provision Cockpit CDN on any kubernetes cluster.

Implemented by following the stateful app setup example provided in kubernetes documentation. 
https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/


## Setup

### Verifgy that kubectl is installed

```kubectl version```

### Create a Secret for MySQL Password

### Create Persistance Volume Claim

```kubectl create -f cockpit-pvc.yaml```

### Deploy Mongo

```kubectl create -f mongo-deployment.yaml```

### Deploy Cockpit

```kubectl create -f cockpit-deployment.yaml```

### Verify status of all nodes using

```kubectl get all```

### Test

http://localhost/

## Cleaning up


### Delete all Deployments and Services

```
kubectl delete deployment -l app=cockpit-kubernetes
kubectl delete service -l app=cockpit-kubernetes
```

### Delete the PersistentVolumeClaims

```
kubectl delete pvc -l app=cockpit-kubernetes
```