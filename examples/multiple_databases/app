#!/bin/bash

case "$1" in
  start)
    $PWD/boot/db start
    $PWD/boot/web start
    ;;
  stop)
    $PWD/boot/web stop
    ;;
  restart)
    $PWD/boot/web stop

    $PWD/boot/web start
    ;;
  status)
    $PWD/boot/web status
    $PWD/boot/db status
    ;;
  force_stop)
    $PWD/boot/app stop
    $PWD/boot/db stop
    ;;
  force_restart)
    $PWD/boot/app force_stop
    $PWD/boot/app start
    ;;
  build)
    echo "Building Ruby w/Xorg"
    docker build -t praeses/ruby_1.9.3:xorg - < $PWD/boot/definitions/Dockerfile.ruby_1.9.3:org
    echo "Building Redis"
    docker build -t praeses/redis_2.2.12 - < $PWD/boot/definitions/Dockerfile.redis_2.2.12
    echo "Building Mongo"
    docker build -t praeses/mongodb_2.4.5 - < $PWD/boot/definitions/Dockerfile.mongo_2.4.5
  ;;
  bundle)
    $PWD/boot/web bundle
  ;;
  assets)
    $PWD/boot/web assets
  ;;
esac
