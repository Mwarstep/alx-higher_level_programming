#!/usr/bin/python3
"""Takes a URL, sends a request and displays the value of the var
X-Request-Id in the response header.
"""
import sys
import requests


if __name__ == "__main__":
    url = sys.argv[1]

    req = requests.get(url)
    print(req.headers.get('X-Request-Id'))
