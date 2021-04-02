#!/bin/python3
with open('better-wubi.dict') as sf:
    with open('better-wubi-for-baidu.def', 'w') as df:
        while True:
            line = sf.readline()
            if not line:
                break
            idx = line.index(' ')
            code, value = line[:idx], line[idx + 1:-1]
            df.write(f'{value}{code}\n')
