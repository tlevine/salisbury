#!/bin/sh
set -e

# Parameters
password='ae145b3c-2880-11e2-b278-f23c91ae1986'
server_address='box.scraperwiki.com'

# Run
nprocs=$(grep -c processor /proc/cpuinfo)
echo Running $nprocs worker processes
for process in $(seq $nprocs); do
  python -m mincemeat -p "$password" "$server_address" &
done
wait
echo The job is complete.
