#!/bin/sh

if [[ $(docker ps -a) ]]
then
        docker stop $(docker ps -a -q)
        docker rm $(docker ps -a -q)
        echo "stopped and cleaned old applebite container"

        docker rmi $(docker images -q)
        echo "deleted old applebite images"
else
        echo "nothing to clean"
fi

