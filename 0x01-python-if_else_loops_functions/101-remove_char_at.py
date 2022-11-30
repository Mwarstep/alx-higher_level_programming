#!/usr/bin/python3

def remove_char_at(str, n):
    x = 0
    str_1 = ""
    for ch in str:
        if x != n:
            str_1 += ch
        x += 1
    return str_1
