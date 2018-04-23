kubectl delete deployment -l app=cockpit-kubernetes,tier=backend
kubectl delete service -l app=cockpit-kubernetes,tier=backend
kubectl delete statefulset -l app=cockpit-kubernetes,tier=backend

kubectl delete pvc -l app=cockpit-kubernetes,tier=backend

kubectl delete deployment -l app=cockpit-kubernetes,tier=frontend
kubectl delete service -l app=cockpit-kubernetes,tier=frontend
kubectl delete statefulset -l app=cockpit-kubernetes,tier=frontend

kubectl delete pvc -l app=cockpit-kubernetes,tier=frontend