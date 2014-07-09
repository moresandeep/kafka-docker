#!/bin/bash
ZOOKEEPER=`docker ps -a | awk '{print $NF}'  | grep "zookeeper$"`
ZOOKEEPER_RUNNING=$?
if [ $ZOOKEEPER_RUNNING -eq 0 ] ;
then
    echo "Zookeeper is already running"
else
    echo "Starting Zookeeper"
    docker run -p 49181:2181  -h zookeeper --name zookeeper -d srmore/zookeeper:3.4.5
fi

ID=$1
PORT=$2
HOST_IP=$3

docker run -p $PORT:$PORT --link zookeeper:zk -e BROKER_ID=$ID -e HOST_IP=$HOST_IP -e PORT=$PORT -d srmore/kafka:2.8.0

