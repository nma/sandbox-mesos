#!/bin/bash

docker run --net=host -d mesosphere/chronos /usr/bin/chronos --http_port 8081 --master zk://127.0.0.1:2181/mesos --zk_hosts 127.0.0.1:2181 
