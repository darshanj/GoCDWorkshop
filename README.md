# GoCD setup for workshop

This codebase sets up GoCD containers to compile and publish a
docker image from a sample application

### Commands:

 docker-compose build <br/>
 docker-compose up <br/>

### Post that

 Change DOCKERHUB_USER and DOCKERHUB_PASSWORD in your go-server http://localhost:8153/go/environments/contacts-deployment/show


## Steps to set up infrastruce

##### Setup docker go-agent

```docker exec -it gocdworkshop_go-agent-docker_1 bash``` <br />
```chown go:go /var/run/docker.sock```

##### Setup deployment go-agent

```cp cp ~/.minikube/ca.crt ~/.minikube/apiserver.key ~/.minikube/apiserver.crt files/go-agent/kube-config/```
```docker exec -it gocdworkshop_go-agent-deployment_1 bash``` <br />
```su - go``` <br />
```kubectl get nodes``` <br />

## Note: 
If you face issues with docker go agent throwing this error 'Cannot connect to the Docker daemon.',
please run this command in that Go agent ```chown go:go /var/run/docker.sock```
