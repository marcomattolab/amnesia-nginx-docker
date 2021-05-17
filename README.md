# Data Anonymization Amnesia on Docker
This repository contains the docker-compose to have up/running [Amnesia](https://amnesia.openaire.eu/) as Data Anonymization Tool by [openaire.eu](https://www.openaire.eu/).
The docker-compose uses these two as internal components : [Nginx](https://www.nginx.com/), [Amnesia](https://amnesia.openaire.eu/download.html)


The Amnesia tool has two main components:
- frontend: static pages placed on Nginx HTML folder (Not provided because uses a commercial library for the GUI)
- [backend](https://github.com/dTsitsigkos/Amnesia): APIs available on host:port => localhost:8181


Script to start Amnesia backend:
```bash
$ java -jar -Xms1024m -Xmx4096m -Dorg.eclipse.jetty.server.Request.maxFormKeys=1000000 -Dorg.eclipse.jetty.server.Request.maxFormContentSize=1000000 /amnesia-lin/amnesiaBackEnd-1.0-SNAPSHOT.jar --server.port=8181 --trace
```


## Table of Contents

1. [Docker](#docker)
1. [Configuration](#configuration)
1. [License](#license)


## Docker

Run docker image:

```bash
$ git clone https://github.com/marcomattolab/amnesia-nginx-docker.git
$ cd amnesia-nginx-docker
$ docker-compose up -d

```

## Configuration

1. Modify (if necessary - See [docker-compose](https://github.com/marcomattolab/amnesia-nginx-docker/blob/main/docker-compose.yaml), [app.conf for Nginx](https://github.com/marcomattolab/amnesia-nginx-docker/blob/main/nginx/conf.d/app.conf) )
2. Start docker container
3. Test to have Amnesia UP/RUNNING on http://localhost:80/


## Configuration Changes for other domain/port
```bash
$ cd amnesia-nginx-docker/app/amnesia-lin/app/
Open Notepad++ find "localhost/" and replace with "torino.decido-project.eu:81/" for all istances.
Open docker-compose.yaml and enable only ports - 81:80 
Test to have Amnesia UP/RUNNING on http://torino.decido-project.eu:81/
```


## License

[Apache License, Version 2.0](LICENSE.md)
