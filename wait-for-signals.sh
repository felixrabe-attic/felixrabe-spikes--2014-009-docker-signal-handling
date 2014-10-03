#!/bin/bash

set -e

if [[ $# -gt 0 ]] ; then
  duration=$1
else
  duration=4
fi

loop=true

trap 'loop=false' INT TERM

while $loop ; do
  echo "wait.... ($duration s)"
  sleep "$duration"
done
echo  # insert a line break after '^C'

echo 'done'
