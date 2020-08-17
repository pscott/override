#!/usr/bin/python

with open("hexa", 'r') as f:
    nums = f.read().split('\n')
    res = "".join([bytearray.fromhex(num).decode()[::-1] for num in nums])
    print(res)
