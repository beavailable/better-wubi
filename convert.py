#!/bin/python3
import sys
import os

if len(sys.argv) < 2:
    print(f'usage: {os.path.basename(sys.argv[0])} config-dir')
    sys.exit(1)

name = sys.argv[1].rstrip('/')

head = f'{name}/head'
if os.path.isfile(head):
    with open(head) as f:
        print(f.read(), end='')

with open(f'{name}/format') as f:
    fmt = f.read()[:-1]

with open('better-wubi.dict') as f:
    for line in f:
        idx = line.index(' ')
        code, value = line[:idx], line[idx + 1:-1]
        print(fmt.format(code=code, value=value))

tail = f'{name}/tail'
if os.path.isfile(tail):
    with open(tail) as f:
        print(f.read(), end='')
