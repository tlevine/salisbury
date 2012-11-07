#!/bin/sh
set -e

if [ "$USER" = 'root' ]
  then
  yum -y install git
else
  echo Run this as root.
  exit 1
fi
