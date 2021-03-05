#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $DIR/variables.env

for num in {1..5}
do
  CONTAINER_NAME="$LXC_CONTAINER_PREFIX$num"
  echo "Stopping $CONTAINER_NAME ..."
  lxc stop $CONTAINER_NAME
  echo "Deleting $CONTAINER_NAME ..." 
  lxc delete $CONTAINER_NAME
done
