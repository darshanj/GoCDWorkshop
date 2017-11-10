# GoCD setup for workshop

This codebase sets up GoCD containers to compile and publish a
docker image from a sample application

### Commands:

```docker-compose build``` <br/>
```docker-compose up``` <br/>

### Post that

Change DOCKERHUB_USER and DOCKERHUB_PASSWORD in your go-server for following environments:

 1. http://localhost:8153/go/environments/contacts-ui-docker/show
 2. http://localhost:8153/go/environments/contacts-api-docker/show
 3. http://localhost:8153/go/environments/contacts-db-docker/show


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
