eksctl create cluster --name my-k8s
# 2021-08-19 19:26:21 [ℹ]  eksctl version 0.61.0
# 2021-08-19 19:26:21 [ℹ]  using region eu-west-1
# 2021-08-19 19:26:21 [ℹ]  setting availability zones to [eu-west-1a eu-west-1b eu-west-1c]
# 2021-08-19 19:26:21 [ℹ]  subnets for eu-west-1a - public:192.168.0.0/19 private:192.168.96.0/19
# 2021-08-19 19:26:21 [ℹ]  subnets for eu-west-1b - public:192.168.32.0/19 private:192.168.128.0/19
# 2021-08-19 19:26:21 [ℹ]  subnets for eu-west-1c - public:192.168.64.0/19 private:192.168.160.0/19
# 2021-08-19 19:26:21 [ℹ]  nodegroup "ng-15ca48b2" will use "" [AmazonLinux2/1.20]
# 2021-08-19 19:26:21 [ℹ]  using Kubernetes version 1.20
# 2021-08-19 19:26:21 [ℹ]  creating EKS cluster "my-k8s" in "eu-west-1" region with managed nodes
# 2021-08-19 19:26:21 [ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial managed nodegroup
# 2021-08-19 19:26:21 [ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=eu-west-1 --cluster=my-k8s'
# 2021-08-19 19:26:21 [ℹ]  CloudWatch logging will not be enabled for cluster "my-k8s" in "eu-west-1"
# 2021-08-19 19:26:21 [ℹ]  you can enable it with 'eksctl utils update-cluster-logging --enable-types={SPECIFY-YOUR-LOG-TYPES-HERE (e.g. all)} --region=eu-west-1 --cluster=my-k8s'
# 2021-08-19 19:26:21 [ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "my-k8s" in "eu-west-1"
# 2021-08-19 19:26:21 [ℹ]  2 sequential tasks: { create cluster control plane "my-k8s", 3 sequential sub-tasks: { wait for control plane to become ready, 1 task: { create addons }, create managed nodegroup "ng-15ca48b2" } }
# 2021-08-19 19:26:21 [ℹ]  building cluster stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:26:22 [ℹ]  deploying stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:26:52 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:27:23 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:28:23 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:29:23 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:30:24 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:31:24 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:32:25 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:33:25 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:34:26 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:35:26 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:36:26 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:37:27 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:38:27 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:42:32 [ℹ]  building managed nodegroup stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:42:32 [ℹ]  deploying stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:42:32 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:42:49 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:43:06 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:43:26 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:43:43 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:44:03 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:44:22 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:44:41 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:44:59 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:45:17 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:45:34 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:45:50 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:46:08 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:46:25 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:46:25 [ℹ]  waiting for the control plane availability...
# 2021-08-19 19:46:25 [✔]  saved kubeconfig as "/home/vzhyhalau/.kube/config"
# 2021-08-19 19:46:25 [ℹ]  no tasks
# 2021-08-19 19:46:25 [✔]  all EKS cluster resources for "my-k8s" have been created
# 2021-08-19 19:46:26 [ℹ]  nodegroup "ng-15ca48b2" has 2 node(s)
# 2021-08-19 19:46:26 [ℹ]  node "ip-192-168-57-180.eu-west-1.compute.internal" is ready
# 2021-08-19 19:46:26 [ℹ]  node "ip-192-168-90-230.eu-west-1.compute.internal" is ready
# 2021-08-19 19:46:26 [ℹ]  waiting for at least 2 node(s) to become ready in "ng-15ca48b2"
# 2021-08-19 19:46:26 [ℹ]  nodegroup "ng-15ca48b2" has 2 node(s)
# 2021-08-19 19:46:26 [ℹ]  node "ip-192-168-57-180.eu-west-1.compute.internal" is ready
# 2021-08-19 19:46:26 [ℹ]  node "ip-192-168-90-230.eu-west-1.compute.internal" is ready
# 2021-08-19 19:48:30 [ℹ]  kubectl command should work with "/home/vzhyhalau/.kube/config", try 'kubectl get nodes'
# 2021-08-19 19:48:30 [✔]  EKS cluster "my-k8s" in "eu-west-1" region is ready


kubectl cluster-info
# Kubernetes control plane is running at https://86B4A75910627050E2C8C20997F33BFA.sk1.eu-west-1.eks.amazonaws.com
# CoreDNS is running at https://86B4A75910627050E2C8C20997F33BFA.sk1.eu-west-1.eks.amazonaws.com/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

# To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.

eksctl delete cluster --name my-k8s
# 2021-08-19 19:50:54 [ℹ]  eksctl version 0.61.0
# 2021-08-19 19:50:54 [ℹ]  using region eu-west-1
# 2021-08-19 19:50:54 [ℹ]  deleting EKS cluster "my-k8s"
# 2021-08-19 19:50:55 [ℹ]  deleted 0 Fargate profile(s)
# 2021-08-19 19:50:56 [✔]  kubeconfig has been updated
# 2021-08-19 19:50:56 [ℹ]  cleaning up AWS load balancers created by Kubernetes objects of Kind Service or Ingress
# 2021-08-19 19:50:59 [ℹ]  2 sequential tasks: { delete nodegroup "ng-15ca48b2", delete cluster control plane "my-k8s" [async] }
# 2021-08-19 19:50:59 [ℹ]  will delete stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:50:59 [ℹ]  waiting for stack "eksctl-my-k8s-nodegroup-ng-15ca48b2" to get deleted
# 2021-08-19 19:50:59 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:51:15 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:51:33 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:51:52 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:52:09 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:52:30 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:52:49 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:53:08 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:53:25 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:53:43 [ℹ]  waiting for CloudFormation stack "eksctl-my-k8s-nodegroup-ng-15ca48b2"
# 2021-08-19 19:53:44 [ℹ]  will delete stack "eksctl-my-k8s-cluster"
# 2021-08-19 19:53:44 [✔]  all cluster resources were deleted


https://eksctl.io/usage/creating-and-managing-clusters/

eksctl create cluster -f myk8s.yaml
eksctl delete cluster -f myk8s.yaml #good if you create cluster for other region

kubectl get nodes

kubectl run nginx --image=nginx:latest --port=80

kubectl get pods

kubectl describe pods nginx

kubectl exec nginx ls

kubectl exec -it nginx sh #exit to exit

kubectl logs nginx

kubectl port-forward nginx 3000:80

kubectl delete pods nginx

kubectl delete --all pods

kubectl apply -f nginx.yaml
