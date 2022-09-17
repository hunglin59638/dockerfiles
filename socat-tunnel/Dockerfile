FROM alpine/socat:1.7.4.3-r1
LABEL MAINTAINER="Hung-Lin, Chen" IMAGE="hunglin59638/socat" TAG="1.0.0"
ENV SERVER_IP "localhost"
ENV SERVER_PORT 80
ENV LOCAL_PORT 8080
ADD entrypoint.sh /
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

