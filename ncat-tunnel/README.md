## Introduction
Mapping the remote port to the local port with ncat.  

github: [https://github.com/hunglin59638/dockerfiles](https://github.com/hunglin59638/dockerfiles) > ncat-tunnel  
docker: [https://hub.docker.com/repository/docker/hunglin59638/alpine-ncat](https://hub.docker.com/repository/docker/hunglin59638/alpine-ncat)

## Usage

**3** arguments are required.
- SERVER_IP (default: localhost)
- SERVER_PORT (default: 80)
- LOCAL_PORT  (default: 8080)


```
docker run --rm -p $LOCAL_PORT:$LOCAL_PORT --env SERVER_IP=$SERVER_IP --env SERVER_PORT=$SERVER_PORT --env LOCAL_PORT=$LOCAL_PORT hunglin59638/alpine-ncat:TAGNAME
```

open the browser and type `http://localhost:8080`

or you can use docker-compose and set arguments by `.env`
```
docker-compose up -d
```