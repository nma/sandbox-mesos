FROM mesosphere/mesos:0.28.0-2.0.16.ubuntu1404
MAINTAINER Mesosphere <support@mesosphere.io>

RUN apt-get update && apt-get install curl
RUN curl -sSL https://get.docker.com/ | sh

ENTRYPOINT ["mesos-slave"]
