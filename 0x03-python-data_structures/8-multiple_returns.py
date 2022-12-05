#!/usr/bin/python3

def multiple_returns(sentence):
    """Will return the len of a string and its 1st Character"""
    if sentence == "":
        return (0, None)
    return (len(sentence), sentence[0])
