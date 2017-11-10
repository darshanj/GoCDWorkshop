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
