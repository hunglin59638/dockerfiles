## Introduction  
Mapping a local port to a external port between local and remote server.  
source code: [hunglin59638/dockerfiles](https://github.com/hunglin59638/dockerfiles) > frp  
reference: [fatedier/frp](https://github.com/fatedier/frp)  

## Environment setup  
The environment file is at `.env`  

| Options         | Default         | Description                                                       | Which mode need to set |
| --------------- | --------------- | ----------------------------------------------------------------- | ---------------------- |
| TAG             | 1.0.0           | docker image tag                                                  | both                   |
| FRP_MODE        | frps            | mode for server or client (`frps/frpc`)                           | both                   |
| TOKEN           | "setbyyourself" | secret code between server and client (both of them must be same) | both                   |
| SERVER_ADDR     | 0.0.0.0         | ip of the server (e.g. 172.217.163.46)                            | both                   |
| SERVER_FRP_PORT | 7000            | listen port of server                                             | both                   |
| APP_LOCAL_IP    | 0.0.0.0         | ip of the local                                                   | frpc                   |
| APP_LOCAL_PORT  | 8080            | which port is exposed for local service                           | frpc                   |
| APP_SERVER_PORT | 80              | which port of server you want to expose                           | frpc                   |

If you are a Chinese user, the document of frp arguments is following.
> https://gofrp.org/docs/reference/

## Usage  
Before run the image, you need to set the `.env` file and pull the image to both of server and local device.

```
docker pull hunglin59638/frp:1.0.0
```

### server 
```
docker-compose -f docker-compose_frps.yml up -d  
```

### client (local)
```
docker-compose -f docker-compose_frpc.yml up -d
```