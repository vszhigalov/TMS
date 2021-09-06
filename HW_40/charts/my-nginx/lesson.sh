#create manifest file
kubectl create deployment my-nginx --image nginx > templates/deployment.yaml

#create pods via helm
helm install my-nginx .

# tall my-nginx .
# NAME: my-nginx
# LAST DEPLOYED: Mon Aug 30 17:06:40 2021
# NAMESPACE: default
# STATUS: deployed
# REVISION: 1
# TEST SUITE: None

#show charts
helm list
# NAME            NAMESPACE       REVISION        UPDATED                                STATUS          CHART           APP VERSION
# my-nginx        default         1               2021-08-30 17:06:40.1568061 +0300 +03  deployed        my-nginx-0.1.0             

helm delete my-nginx


kubectl expose deploy my-nginx --port 80 --dry-run -o yaml > templates/service.yaml

#to upgrade pods
helm upgrade my-nginx .
# Release "my-nginx" has been upgraded. Happy Helming!
# NAME: my-nginx
# LAST DEPLOYED: Mon Aug 30 18:25:37 2021
# NAMESPACE: default
# STATUS: deployed
# REVISION: 2
# TEST SUITE: None

helm list
# NAME            NAMESPACE       REVISION        UPDATED                                STATUS          CHART           APP VERSION
# my-nginx        default         2               2021-08-30 18:25:37.4734963 +0300 +03  deployed        my-nginx-0.2.0   

helm rollback my-nginx 1
# Rollback was a success! Happy Helming!

helm list
# NAME            NAMESPACE       REVISION        UPDATED                                STATUS          CHART           APP VERSION
# my-nginx        default         3               2021-08-30 18:27:21.9549516 +0300 +03  deployed        my-nginx-0.1.0  

helm rollback my-nginx 2
# Rollback was a success! Happy Helming!

helm history my-nginx
# REVISION        UPDATED                         STATUS        CHART            APP VERSION     DESCRIPTION     
# 1               Mon Aug 30 18:21:49 2021        superseded    my-nginx-0.1.0                   Install complete
# 2               Mon Aug 30 18:25:37 2021        superseded    my-nginx-0.2.0                   Upgrade complete
# 3               Mon Aug 30 18:27:21 2021        superseded    my-nginx-0.1.0                   Rollback to 1   
# 4               Mon Aug 30 18:29:11 2021        deployed      my-nginx-0.2.0                   Rollback to 2   

helm install my-nginx . --set replicaCount=2
# NAME: my-nginx
# LAST DEPLOYED: Mon Aug 30 18:36:38 2021
# NAMESPACE: default
# STATUS: deployed
# REVISION: 1
# TEST SUITE: None


kubectl get all
# NAME                            READY   STATUS    RESTARTS   AGE
# pod/my-nginx-6b74b79f57-2g2v8   1/1     Running   0          8m30s
# pod/my-nginx-6b74b79f57-b697n   1/1     Running   0          8m30s

# NAME                 TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
# service/kubernetes   ClusterIP   10.100.0.1      <none>        443/TCP        133m
# service/my-nginx     NodePort    10.100.242.87   <none>        80:30645/TCP   8m30s

# NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
# deployment.apps/my-nginx   2/2     2            2           8m30s

# NAME                                  DESIRED   CURRENT   READY   AGE
# replicaset.apps/my-nginx-6b74b79f57   2         2         2       8m30s

helm upgrade my-nginx . --set service.type=LoadBalancer
# Release "my-nginx" has been upgraded. Happy Helming!
# NAME: my-nginx
# LAST DEPLOYED: Mon Aug 30 18:47:50 2021
# NAMESPACE: default
# STATUS: deployed
# REVISION: 3
# TEST SUITE: None

kubectl get all
# NAME                            READY   STATUS        RESTARTS   AGE
# pod/my-nginx-6b74b79f57-2g2v8   0/1     Terminating   0          11m
# pod/my-nginx-6b74b79f57-b697n   1/1     Running       0          11m

# NAME                 TYPE           CLUSTER-IP      EXTERNAL-IP                                                               PORT(S)        AGE
# service/kubernetes   ClusterIP      10.100.0.1      <none>                                                                    443/TCP        135m
# service/my-nginx     LoadBalancer   10.100.242.87   a5ba2b2f3a2d0453d889dc3627d62c0d-1317581090.eu-west-1.elb.amazonaws.com   80:30645/TCP   11m

# NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
# deployment.apps/my-nginx   1/1     1            1           11m

# NAME                                  DESIRED   CURRENT   READY   AGE
# replicaset.apps/my-nginx-6b74b79f57   1         1         1       11m