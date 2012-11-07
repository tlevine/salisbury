#!/bin/sh
set -e

if [ "$USER" = 'root' ]
  then
  echo Don\'t run this as root.
  exit 1
else
  curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
  pythonz install 2.7.3 # 3.3.0
fi
