#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "Please specify the version tag"
    exit 1
fi

docker tag back2wild/coturn back2wild/coturn:latest
docker tag back2wild/coturn back2wild/coturn:$1
docker push back2wild/coturn:latest
docker push back2wild/coturn:$1
