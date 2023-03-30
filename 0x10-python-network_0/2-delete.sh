#!/bin/bash
# Sends a DELETE request to URL passed as the first arg and displays the body of response
curl -s "$1" -X DELETE
