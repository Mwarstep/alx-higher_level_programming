#!/bin/bash
# Will send a DELETE request to URL passed as the first arg and display the body of response
curl -s "$1" -X DELETE
