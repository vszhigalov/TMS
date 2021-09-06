#https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-kubernetes
kubectl create namespace jenkins
kubectl create -f deployment.yaml --namespace jenkins
kubectl get pods -n jenkins

kubectl create -f jenkins.yaml --namespace jenkins
# deployment.apps/jenkins created

kubectl create -f jenkins-service.yaml --namespace jenkins
# service/jenkins created
# service/jenkins-jnlp created

kubectl get services --namespace jenkins
# NAME           TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
# jenkins        NodePort    10.100.113.228   <none>        8080:30000/TCP   14s
# jenkins-jnlp   ClusterIP   10.100.217.141   <none>        50000/TCP        14s


###################--------------------------###########################

