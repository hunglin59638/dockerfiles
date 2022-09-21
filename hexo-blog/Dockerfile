FROM node:alpine3.15 as builder
RUN apk add tzdata

FROM node:alpine3.15
LABEL MAINTAINER="Hung-Lin, Chen" EMAIL="hunglin59638@gmail.com"

ENV HEXO_VERSION=6.3.0 \
    HEXO_SERVER_PORT=4000 \
    HEXO_DIR=/hexo
COPY entrypoint.sh /
COPY --from=builder /usr/share/zoneinfo/Asia/Taipei /etc/localtime
RUN apk add git &&\
    echo "Asia/Taipei" > /etc/timezone &&\
    npm install hexo@$HEXO_VERSION -g &&\ 
    chmod +x entrypoint.sh 

ENTRYPOINT ["./entrypoint.sh"]
