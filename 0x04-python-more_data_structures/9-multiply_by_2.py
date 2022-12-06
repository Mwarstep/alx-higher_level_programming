#!/usr/bin/python3

def multiply_by_2(a_dictionary):
    new_n = {}
    for x in a_dictionary:
        new_n[x] = a_dictionary[x] * 2
    return new_n
