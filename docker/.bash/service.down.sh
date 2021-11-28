#!/bin/bash
set -e

if [ "$1" = "prod" ]; then
    echo "If you are in prod"
    cd ../prod
    docker-compose down
else
    echo "** You are in development **"
    cd ../dev
    docker-compose down
fi