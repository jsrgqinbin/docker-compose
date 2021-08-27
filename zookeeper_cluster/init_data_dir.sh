#!/usr/bin/env bash

PRJ_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ >/dev/null && pwd )"
ZK1_DATA_PATH=${PRJ_PATH}/zk1/data
ZK1_CONF_PATH=${PRJ_PATH}/zk1/conf
ZK1_LOG_PATH=${PRJ_PATH}/zk1/log

ZK2_DATA_PATH=${PRJ_PATH}/zk2/data
ZK2_CONF_PATH=${PRJ_PATH}/zk2/conf
ZK2_LOG_PATH=${PRJ_PATH}/zk2/log

ZK3_DATA_PATH=${PRJ_PATH}/zk3/data
ZK3_CONF_PATH=${PRJ_PATH}/zk3/conf
ZK3_LOG_PATH=${PRJ_PATH}/zk3/log

if [ ! -d ${ZK1_DATA_PATH} ]; then
  mkdir -p ${ZK1_DATA_PATH}
fi

if [ ! -d ${ZK1_CONF_PATH} ]; then
  mkdir -p ${ZK1_CONF_PATH}
fi

if [ ! -d ${ZK1_LOG_PATH} ]; then
  mkdir -p ${ZK1_LOG_PATH}
fi

if [ ! -d ${ZK2_DATA_PATH} ]; then
  mkdir -p ${ZK2_DATA_PATH}
fi

if [ ! -d ${ZK2_CONF_PATH} ]; then
  mkdir -p ${ZK2_CONF_PATH}
fi

if [ ! -d ${ZK2_LOG_PATH} ]; then
  mkdir -p ${ZK2_LOG_PATH}
fi

if [ ! -d ${ZK3_DATA_PATH} ]; then
  mkdir -p ${ZK3_DATA_PATH}
fi

if [ ! -d ${ZK3_CONF_PATH} ]; then
  mkdir -p ${ZK3_CONF_PATH}
fi

if [ ! -d ${ZK3_LOG_PATH} ]; then
  mkdir -p ${ZK1_DATA_PATH}
fi

echo "done"
