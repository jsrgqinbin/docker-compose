#!/usr/bin/env bash

PRJ_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ >/dev/null && pwd )"

docker network create --driver bridge --subnet=192.168.100.0/24 --gateway 192.168.100.1 ${@} app-network || true
#docker network create --driver=bridge --subnet=192.168.100.0/24 app-network || true
docker network ls
