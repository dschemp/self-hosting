#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $DIR/variables.env

usage() {
  echo "Supply a file path to which you want to export."
}

if [ $# -eq 0 ]
then
    usage
    exit 1
fi

FILE_PATH=$1

lxc ls | grep $LXC_CONTAINER_PREFIX | egrep '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}' -o > $FILE_PATH
