#!/bin/bash
# Sends a request to a URL and Displays the size of the body of the response
curl -s "$1" | wc -c
