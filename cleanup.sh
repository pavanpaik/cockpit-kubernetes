kubectl delete deployment -l app=cockpit-kubernetes
kubectl delete service -l app=cockpit-kubernetes
kubectl delete pvc -l app=cockpit-kubernetes