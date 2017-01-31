#!/bin/bash

set -x

TEMP=$(mktemp)

BASEDIR=$0
TENSORFLOW=$1

rsync -R --files-from=./_files/core_protos.lst \
  $TENSORFLOW ./core/src/main/protobuf
