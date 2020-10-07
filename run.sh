#!/bin/sh

#
# $1= project lambda name
# 

set -eu

chmod 755 ./scripts/builder.sh
chmod 755 ./scripts/package.sh

./scripts/builder.sh $1
