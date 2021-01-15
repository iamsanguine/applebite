#!/bin/sh

if [[ $(docker ps -a -q) ]]
then
        docker stop $(docker ps -a -q |  grep applebite)
        docker rm $(docker ps -a -q |  grep applebite)
        docker rmi $(docker images -q |  grep applebite)
        echo "stopped and cleaned old container"
else
        echo "nothing to clean"
fi
