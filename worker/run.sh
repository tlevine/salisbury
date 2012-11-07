#!/bin/sh

# Parameters
password='ae145b3c-2880-11e2-b278-f23c91ae1986'
server_address='box.scraperwiki.com'

# Install
mincemeat="$HOME/mincemeat.py"
[ -e "$mincemeat" ] || wget -O "$mincemeat" https://raw.github.com/michaelfairley/mincemeatpy/v0.1.2/mincemeat.py

# Run
python mincemeat.py -p "$password" "$server_address"

# Report
echo The worker is running. It is watching the server at \""$server_address"\"
echo with the password \""$password"\".
