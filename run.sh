#!/bin/sh

NAME=elasticsearch-openshift
docker kill ${NAME}
docker rm ${NAME}
docker run -d \
    -p 9200:9200 \
    -e MEMORY_LOCK=false \
    --name ${NAME}  \
    elasticsearch-openshift