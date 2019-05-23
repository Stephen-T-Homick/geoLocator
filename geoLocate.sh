#!/bin/bash
### Requires jq, curl and dig to be installed. ###
#
function geo(){
    for args in $@ ; do curl -s ipinfo.io/$(dig +short "$args") | jq;done
}

if [ $# -eq 0 ] ; then
    echo "No arguments supplied. Exiting"
else
    geo "$@"
fi

