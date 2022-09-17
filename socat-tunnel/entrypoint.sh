#!/bin/sh

if [ $# -gt 0 ];then
    SERVER_IP=$1
    SERVER_PORT=$2
    LOCAL_PORT=$3
fi

socat tcp-l:${LOCAL_PORT},fork,reuseaddr tcp:${SERVER_IP}:${SERVER_PORT}

