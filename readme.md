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

### Several processes on one worker
As the user, activate and run `run.sh`. This will start as many processes
as you have cores.

### Several processes on several workers
Adjust `bin/workers` for your configuration, then activate and run `workers`.
This will ssh to all of the worker systems and run `run.sh`.

## References
Spawning multiple processes in shell
* http://kochanski.org/blog/?p=326
* http://elonen.iki.fi/code/misc-notes/core-split/index.html
* http://prll.sourceforge.net/shell_parallel.html

