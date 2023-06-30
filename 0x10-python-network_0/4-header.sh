#!/bin/bash
# This takes in a URL as an arg, sends a GET request and displays the body of response
curl -sH "X-School-User-Id: 98" "$1"
