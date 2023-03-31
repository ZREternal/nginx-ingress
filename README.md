 #该项目为一个ingress的组件以及测试的nginx pod。ingress-controller为daemonset部署，hostnetwork。
 #创建ingress时以下内容不可少
  annotations:
    kubernetes.io/ingress.class: "nginx"
#内容域名和secret自定义

1 kubectl apply -f nginx-ingress-rbac.yaml
2 kubectl apply -f defaultbackend.yaml
3 kubectl apply -f nginx-ingress-controller.yaml
4 sh TLSKEY.sh
5 kubectl apply -f web-nginx-ingress-deployment-svc.yaml
6 kubectl apply -f web-nginx-ingress.yaml

