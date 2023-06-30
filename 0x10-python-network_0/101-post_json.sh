#!/bin/bash
# This sends a JSON Script POST request to a URL passed as first arg and displays the body of the response
curl -s -H "Content-Type: application/json" -d "$(cat "$2")" "$1"
