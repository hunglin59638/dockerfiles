FROM golang:alpine3.16 as builder
WORKDIR /opt
RUN apk --no-cache add git make && \
    git clone https://github.com/fatedier/frp.git && \
    cd frp &&\
    make

FROM alpine:3.16 
LABEL MAINTAINER="Hung-Lin, Chen" IMAGE="hunglin59638/frp" TAG="1.0.0"
COPY --from=builder /opt/frp/bin/frp? /usr/bin/
WORKDIR /root
COPY entrypoint.sh ./
COPY frp?.ini ./
RUN chmod a+x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
