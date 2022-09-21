#!/bin/sh

if [ "$FRP_MODE" == "frpc" ]; then
    CONFIG_FILE="./frpc.ini"
elif [ "$FRP_MODE" == "frps" ]; then
    CONFIG_FILE="./frps.ini"
else
    exit 2
fi

if [ -s "$CONFIG_FILE" ]; then
    $FRP_MODE -c $CONFIG_FILE
fi