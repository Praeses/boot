#!/bin/bash

case "$1" in
  start)
    $PWD/script/db start
    $PWD/script/web start
    ;;
  stop)
    $PWD/script/web stop
    ;;
  restart)
    $PWD/script/web stop

    $PWD/script/web start
    ;;
  status)
    $PWD/script/web status
    $PWD/script/db status
    ;;
  force_stop)
    $PWD/script/app stop
    $PWD/script/db stop
    ;;
  force_restart)
    $PWD/script/app force_stop
    $PWD/script/app start
    ;;
  build)
    echo "Building Ruby w/Xorg"
    docker build -t praeses/ruby_1.9.3:xorg http://git.io/8p2_HQ
    echo "Building Redis"
    docker build -t praeses/redis_2.2.12 http://git.io/1kteSA
    echo "Building Mongo"
    docker build -t praeses/mongodb_2.4.5 http://git.io/KtW-vw
  ;;
  bundle)
    $PWD/script/web bundle
  ;;
  assets)
    $PWD/script/web assets
  ;;
esac
