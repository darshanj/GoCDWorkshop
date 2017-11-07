# GoCD setup for workshop

This codebase sets up GoCD containers to compile and publish a
docker image from a sample application

### Commands:

 docker-compose build <br/>
 docker-compose up <br/>

### Post that

Change DOCKERHUB_USER and DOCKERHUB_PASSWORD in your go-server for following environments:

 1. (http://localhost:8153/go/environments/contacts-ui-docker/show)
 2. (http://localhost:8153/go/environments/contacts-api-docker/show)
 3. (http://localhost:8153/go/environments/contacts-db-docker/show)


### Setup pipelines
Add following in go cd config:
```
<config-repos> 
	<config-repo pluginId="yaml.config.plugin" id="repo1"> <git url="https://github.com/darshanj/contacts-ui.git" /> 
	</config-repo> 
	<config-repo pluginId="yaml.config.plugin" id="repo2"> <git url="https://github.com/darshanj/contacts-api.git" /> 
	</config-repo> 
</config-repos>
```

### Setup postgres DB in cluster
Run db-install in pipelines

### Steps to set up infrastruce

##### Setup docker go-agent

```docker exec -it gocdworkshop_go-agent-docker_1 bash``` <br />
```chown go:go /var/run/docker.sock```

##### Setup deployment go-agent
1. Edit files/go-agent/kube-config/kube-config.yml and change your minikube ip
at line: 

```server: https://192.168.99.104:8443```

2. Copy key and crt files

```cp ~/.minikube/ca.crt ~/.minikube/apiserver.key ~/.minikube/apiserver.crt files/go-agent/kube-config/```

3. Check if deployment goagent is able to access minikube

```docker exec -it gocdworkshop_go-agent-deployment_1 bash``` <br />
```su - go``` <br />
```kubectl get nodes``` <br />

## Note: 
If you face issues with docker go agent throwing this error 'Cannot connect to the Docker daemon.',
please run this command in that Go agent ```chown go:go /var/run/docker.sock```
