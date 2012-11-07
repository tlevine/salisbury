Salisbury
=======

Salisbury sets up [mincemeat](https://github.com/michaelfairley/mincemeatpy)
workers and a mincemeat server.

## Install

### Master
Install mincemeat.

    pip install mincemeat

### Worker
Set up a worker by running `dependencies-user.sh` as the user on the worker.

## Run
You must start the master before the workers.

### Master
Run your mincemeat program. For example,

    ./example.py

### Worker
As the user, activate and run `run.sh`. This will start as many processes
as you have cores.
