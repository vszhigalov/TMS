kubectl get all
kubectl get deployment
kubectl set image deployment/nginx nginx=nginx:1.21 --record
kubectl rollout status deployment/nginx
kubectl rollout history deployment/nginx
kubectl describe pods
#rollout application
kubectl rollout undo deployment/nginx
kubectl apply -f nginx.yaml
kubectl delete -f nginx.yaml
kubectl delete deployment/nginx
kubectl delete svc nginx