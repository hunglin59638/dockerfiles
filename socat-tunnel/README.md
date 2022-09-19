## Introduction
Mapping the remote port to the local port.  

github: [https://github.com/hunglin59638/dockerfiles/tree/master/socat-tunnel](https://github.com/hunglin59638/dockerfiles/tree/master/socat-tunnel)  
docker: [https://hub.docker.com/repository/docker/hunglin59638/socat](https://hub.docker.com/repository/docker/hunglin59638/socat)

## Usage

**3** arguments are required.
- SERVER_IP (default: localhost)
- SERVER_PORT (default: 80)
- LOCAL_PORT  (default: 8080)


```
docker run --rm -p $LOCAL_PORT:$LOCAL_PORT --env SERVER_IP=$SERVER_IP --env SERVER_PORT=$SERVER_PORT --env LOCAL_PORT=$LOCAL_PORT hunglin59638/socat:TAGNAME
```

open the browser and type `http://localhost:8080`

or you can use docker-compose and set arguments by `.env`
```
docker-compose up -d
```
