#!/bin/bash

function geo(){
    for args in $@ ; do curl -s ipinfo.io/$(dig +short "$args") | jq;done
}
geo "$@"


