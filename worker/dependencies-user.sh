#!/bin/sh
set -e

if [ "$USER" = 'root' ]
  then
  echo Don\'t run this as root.
  exit 1
else
  # pythonz
  curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
  source "$HOME/.pythonz/etc/bashrc"
  echo '[[ -s "$HOME/.pythonz/etc/bashrc" ]] && source "$HOME/.pythonz/etc/bashrc"' >> "$HOME/.bashrc"

  # python
  pythonz install 2.7.3 # 3.3.0

  # virtualenv
  virtualenv -p python2.7.3 "$HOME/pythonz/pythons/CPython-2.7.3/bin/python2.7"
  # virtualenv -p python3.3.0 "$HOME/pythonz/pythons/CPython-3.3.0/bin/python3.3"

  # packages
  pip install mincemeat

fi
