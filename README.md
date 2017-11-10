
### Setup postgres DB in cluster
Run db-install in pipelines

### Steps to set up infrastruce

##### Setup docker go-agent

```docker exec -it gocdworkshop_go-agent-docker_1 bash``` <br />
```chown go:go /var/run/docker.sock```

##### Setup deployment go-agent

1. Copy key and crt files

```cp ~/.minikube/ca.crt ~/.minikube/apiserver.key ~/.minikube/apiserver.crt files/go-agent/kube-config/```

2. Check if deployment goagent is able to access minikube

```docker exec -it gocdworkshop_go-agent-deployment_1 bash``` <br />
```su - go``` <br />
```kubectl get nodes``` <br />

## Note: 
If you face issues with docker go agent throwing this error 'Cannot connect to the Docker daemon.',
please run this command in that Go agent ```chown go:go /var/run/docker.sock```
