kubectl create namespace monitoring
helm repo add cetic https://cetic.github.io/helm-charts
helm repo update
helm show values cetic/zabbix > $HOME/zabbix_values.yaml
helm install zabbix cetic/zabbix --dependency-update -f $HOME/zabbix_values.yaml -n monitoring
kubectl get pods -n monitoring
kubectl describe services zabbix-web -n monitoring
kubectl port-forward --address 0.0.0.0 service/zabbix-web 8888:80 -n monitoring
