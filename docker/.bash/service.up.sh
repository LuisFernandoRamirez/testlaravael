#!/bin/bash
set -e

if [ "$1" = "prod" ]; then
    echo "If you are in prod"

    if [ -d "$PATH_LOG" ]; then
        echo "${PATH_LOG} has been found."
    else
        mkdir -p $PATH_LOG
        echo "${PATH_LOG} has been created."
    fi

    cd ../prod

    docker-compose down
    docker-compose up -d --build
else
    echo "** You are in development **"
    cd ../dev

    docker-compose down
    docker-compose up -d --build
fi