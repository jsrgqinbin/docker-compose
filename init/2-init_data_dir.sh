#!/usr/bin/env bash

PRJ_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ >/dev/null && pwd )"
DATA_PATH=${PRJ_PATH}/data
DATA_TPL_PATH=${PRJ_PATH}/data_template
DOT_DOCKER_PATH=${HOME}/.docker
DOT_DOCKER_DATA_PATH=${DOT_DOCKER_PATH}/data
DATA_PATH_HOST=${DOT_DOCKER_DATA_PATH}
CODE_PATH=${HOME}/Code
CODE_DATA_PATH=${CODE_PATH}/data
SERVICES_PATH=${PRJ_PATH}/services

if [ ! -d ${DOT_DOCKER_PATH} ]; then
  mkdir -p ${DOT_DOCKER_PATH}
fi
if [ ! -d ${DOT_DOCKER_DATA_PATH} ]; then
  mkdir -p ${DOT_DOCKER_DATA_PATH}
fi
if [ ! -d ${DATA_PATH} ]; then
  ln -nfs ${DATA_PATH_HOST} ${DATA_PATH}
fi
if [ -d ${CODE_PATH} ]; then
  if [ ! -d ${CODE_DATA_PATH} ]; then
    ln -nfs ${DATA_PATH_HOST} ${CODE_DATA_PATH}
  fi
fi

for entry in "${SERVICES_PATH}"/*;
do
  if [ -d "${entry}" ]; then
    if [ ! -d ${entry}/data ]; then
      ln -nfs ${DATA_PATH} ${entry}/data
    fi
    echo ${entry}
  fi
done

rsync -ravzh --progress --stats --delay-updates --exclude=".git/" "${DATA_TPL_PATH%/}/" "${DATA_PATH%/}/"

echo "done"
