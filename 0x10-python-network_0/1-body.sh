#!/bin/bash
# Sends a GET Request to URL and displays the body of response
curl -sL "$1" -X GET -D ./header -o ./output; if grep -q "200 OK" ./header; then cat ./output; fi
