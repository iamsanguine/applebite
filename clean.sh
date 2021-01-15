#!/bin/sh

if [[ $(docker ps -a -q) ]]
then
        docker stop $(docker ps -a -q |  grep applebite)
        docker rm $(docker ps -a -q |  grep applebite)
        echo "stopped and cleaned old applebite container"

        docker rmi $(docker images -q |  grep applebite)
        echo "deleted old applebite images"
else
        echo "nothing to clean"
fi
