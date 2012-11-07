Salisbury
=======

Salisbury sets up [mincemeat](https://github.com/michaelfairley/mincemeatpy)
workers and a mincemeat server.

Set up a worker by running `dependencies.sh` as root and `run.sh` as the user.

Then run a mincemeat program on the server with the password that `run.sh`
tells you. You can install mincemeat on the server like so.

    git submodule init
    git submodule update

Then mincemeat will be in `mincemeat.py`.
