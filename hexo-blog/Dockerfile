FROM mhart/alpine-node
#smebberson/alpine-nginx-nodejs
LABEL MAINTAINER="Hung-Lin, Chen" EMAIL="hunglin59638@gmail.com"

# install nginx and configure
RUN apk add --update nginx git git-perl && \
    rm -rf /var/cache/apk/*

# install hexo
ENV HEXO_VERSION 3.1.0
RUN npm install hexo-cli@$HEXO_VERSION -g &&\ 
    #    npm install hexo-generator-feed &&\ 
    mkdir /hexo &&\
    cd /hexo &&\
    echo -e "#!/bin/sh\ncd /hexo && hexo clean && hexo g && hexo s" > /entrypoint.sh &&\
    chmod +x /entrypoint.sh
RUN mkdir /.npm && \
    chmod -R 777 /.npm &&\
    #    cd /hexo && npm install hexo-generator-feed &&\
    chmod -R 777 /root
USER 1000
WORKDIR /
ENTRYPOINT ["./entrypoint.sh"]
