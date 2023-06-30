#!/usr/bin/python3
"""Lists 10 commits, from the most recent to oldest,
in a repository of a user.
"""
from sys import argv
import requests


if __name__ == "__main__":
    url = 'https://api.github.com'
    url_2 = '{0}/repos/{1}/{2}/commits'.format(url, argv[2], argv[1])
    req = requests.get(url_2).json()

    for com in req[0:10]:
        print(com['sha'] + ':', com['commit']['author']['name'])
