#!/bin/bash
# Will send a GET Request to URL and display the body of response
curl -sL "$1" -X GET -D ./header -o ./output; if grep -q "200 OK" ./header; then cat ./output; fi
