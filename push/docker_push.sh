#!/bin/bash

docker login -u <your docker login>

dt=`date '+%Y-%m-%d_%H-%M-%S'`
echo $dt
docker tag slackerbuild:latest <your docker hub repository name>:$dt
docker tag <your docker hub repository name>:$dt <your docker hub repository name>:latest

docker push <your docker hub repository name>:$dt
docker push <your docker hub repository name>:latest


docker rmi -f $(docker images -f "dangling=true" -q)