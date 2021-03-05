#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $DIR/variables.env

lxc profile create $LXC_PROFILE_NAME
cat $LXC_PROFILE_PATH | lxc profile edit $LXC_PROFILE_NAME
