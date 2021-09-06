#
kubectl create deployment my-nginx --image nginx --dry-run -o yaml > deployment.yaml