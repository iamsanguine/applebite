#!/bin/sh

if [[ $(docker ps -a -q) ]]
then
        docker stop $(docker ps -a -q)
        docker rm $(docker ps -a -q)
        docker rmi $(docker images -q)
        echo "stopped and cleaned old container"
else
        echo "nothing to clean"
fi
