<br> #该项目为一个ingress的组件以及测试的nginx pod。ingress-controller为daemonset部署，hostnetwork。
<br> #创建ingress时以下内容不可少
<br>  annotations:
<br>    kubernetes.io/ingress.class: "nginx"
<br>#内容域名和secret自定义
<br>
<br>1 kubectl apply -f nginx-ingress-rbac.yaml
<br>2 kubectl apply -f defaultbackend.yaml
<br>3 kubectl apply -f nginx-ingress-controller.yaml
<br>4 sh TLSKEY.sh
<br>5 kubectl apply -f web-nginx-ingress-deployment-svc.yaml
<br>6 kubectl apply -f web-nginx-ingress.yaml

