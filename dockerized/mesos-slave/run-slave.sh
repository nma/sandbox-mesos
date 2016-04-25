#!/bin/bash

 #docker run --rm --name mesos-slave -it --net=host --privileged \
 docker run --name mesos-slave -d --net=host --privileged \
  -e MESOS_PORT=5051 \
  -e MESOS_MASTER=zk://127.0.0.1:2181/mesos \
  -e MESOS_SWITCH_USER=0 \
  -e MESOS_CONTAINERIZERS=docker,mesos \
  -e MESOS_LOG_DIR=/var/log/mesos \
  -e MESOS_WORK_DIR=/var/tmp/mesos \
  -v "$(pwd)/log/mesos:/var/log/mesos" \
  -v "$(pwd)/tmp/mesos:/var/tmp/mesos" \
  -v $(which docker):/usr/local/bin/docker \
  -v $(which docker):/bin/docker \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /lib/x86_64-linux-gnu/libsystemd-journal.so.0:/lib/x86_64-linux-gnu/libsystemd-journal.so.0 \
  -v /usr/lib/x86_64-linux-gnu/libapparmor.so.1:/usr/lib/x86_64-linux-gnu/libapparmor.so.1 \
  -v /cgroup:/cgroup \
  -v /sys:/sys \
  mesosphere/mesos-slave:0.28.0-2.0.16.ubuntu1404 --resources="cpus(*):2; mem(*):2048; disk(*):1024"
#mesosphere/mesos-slave:0.28.0-2.0.16.ubuntu1404-docker
