# Cockpit CDN on Kubernetes

This project can be used to provision Cockpit CDN on any kubernetes cluster.

Implemented by following the stateful app setup example provided in kubernetes documentation. 
https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/


## Setup - setup.sh

### Verifgy that kubectl is installed

```kubectl version```

### Create Persistance Volume Claim

```kubectl create -f cockpit-pvc.yaml```

### Deploy Mongo Cluster

```kubectl create -f mongo-statefulset.yaml```

### Deploy Cockpit

```kubectl create -f cockpit-deployment.yaml```

*Note:* This would connect to the mongo replicaset created in previous step

### Verify status of all nodes using

```kubectl get all```

### Test

http://localhost/

## Cleaning up - cleanup.sh


### Delete all Deployments and Services

```
kubectl delete deployment -l app=cockpit-kubernetes
kubectl delete service -l app=cockpit-kubernetes
```

### Delete the PersistentVolumeClaims

```
kubectl delete pvc -l app=cockpit-kubernetes
```


## Reference

https://stackpointcloud.com/community/tutorial/getting-started-with-digitalocean-block-storage-and-kubernetes