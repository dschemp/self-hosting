#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $DIR/variables.env

for num in {1..5}
do
  CONTAINER_NAME="$LXC_CONTAINER_PREFIX$num"
  echo "Creating $CONTAINER_NAME ..."
  lxc launch ubuntu:20.04 $CONTAINER_NAME -p $LXC_PROFILE_NAME
done
