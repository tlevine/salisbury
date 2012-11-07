#!/bin/bash
set -e

if [ "$USER" = 'root' ]
  then
  echo Don\'t run this as root.
  exit 1
else
  if python2 --version | grep 2.7.3; then
    echo 'Using the installed python 2.7.3'
  else
    echo 'Installing python 2.7.3'

    # pythonz
    curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
    source "$HOME/.pythonz/etc/bashrc"
    echo '[[ -s "$HOME/.pythonz/etc/bashrc" ]] && source "$HOME/.pythonz/etc/bashrc"' >> "$HOME/.bashrc"

    # python
    pythonz install 2.7.3

  fi

  # virtualenv
  virtualenv -p python2.7 "$HOME/env"
  source "$HOME/env/bin/activate"
  echo 'source "$HOME/env/bin/activate"' >> "$HOME/.bashrc"

# python3 --version| grep 3.3.0 || pythonz install 3.3.0
# virtualenv -p "$HOME/.pythonz/pythons/CPython-3.3.0/bin/python3.3" python3.3.0

  # packages
  pip install mincemeat

fi
