#!/bin/bash

case "$1" in
  rake)
    START_COMMAND="/bin/bash -c 'cd $REMOTE_VOLUMN && ./bin/rake ${@:2}'"
    run
  ;;
  bundle)
    START_COMMAND="/bin/bash -c 'cd $REMOTE_VOLUMN && bundle install --path .gems'"
    run
  ;;
esac
