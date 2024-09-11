#!/bin/bash

# 檢查是否提供了參數
if [ $# -eq 0 ]; then
    echo "Usage: $0 [start|stop]"
    exit 1
fi

# 檢查參數是否為 start 或 stop
if [ "$1" != "start" ] && [ "$1" != "stop" ]; then
    echo "Invalid argument. Please use 'start' or 'stop'."
    exit 1
fi

# 定義容器列表
containers="mysql81 redis318 phpmyadmin52 redisinsight114"

# 根據參數執行相應的 Docker 命令
for container in $containers; do
    docker container $1 $container
done
