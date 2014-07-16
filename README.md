kafka-docker
============

Dockerfile for [Apache Kafka](http://kafka.apache.org/)

The image is available directly from https://index.docker.io

##Quickstart

```
export START_SCRIPT=https://raw2.github.com/wurstmeister/kafka-docker/master/start-broker.sh
curl -Ls $START_SCRIPT | bash /dev/stdin 1 9092 <your-host-ip>
```

Note: Do not use localhost or 127.0.0.1 as the host ip if you want to run multiple brokers. 

##Tutorial

[http://wurstmeister.github.io/kafka-docker/](http://wurstmeister.github.io/kafka-docker/)

## SRM
* Currently the zookeeper and kafka names are hardcoded which is kinda bad.
* If you are running behing the proxy, uncomment the following lines.
	* `#ENV http_proxy http://example.proxy.com:123`
	* `#ENV https_proxy http://example.proxy.com:123`



