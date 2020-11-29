#!/usr/app/env bash

set -e

export DOCKER_CLIENT_TIMEOUT=120 
export COMPOSE_HTTP_TIMEOUT=120
service mysql stop
docker-compose down 
docker-compose up 