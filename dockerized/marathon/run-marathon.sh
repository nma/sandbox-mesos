#!/bin/bash

docker run --name marathon --net=host -d --privileged \
    -e MARATHON_MASTER=zk://127.0.0.1:2181/mesos \
    -e MARATHON_ZK=zk://127.0.0.1:2181/marathon \
mesosphere/marathon:v1.1.0-expose 
