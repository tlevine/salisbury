#!/bin/sh

# Parameters
password='ae145b3c-2880-11e2-b278-f23c91ae1986'
server_address='box.scraperwiki.com'

# Run
python -m mincemeat -p "$password" "$server_address" 

# Report
echo The worker is running. It is watching the server at \""$server_address"\"
echo with the password \""$password"\".
