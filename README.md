install kind:
`go install sigs.k8s.io/kind@v0.23.0 && kind create cluster`

docker build:
```
docker build -t hello-app:v1 .
kind load docker-image hello-app:v1
```

kubectl:
```
alias k=kubectl
k delete deployment hello-world-deployment
k create -f deployment.yaml

```

`wrk -t4 -c100 -d5s --timeout 15s http://localhost:8101`

`wrk -t4 -c100 -d5s --timeout 15s http://172.25.0.2:30008`