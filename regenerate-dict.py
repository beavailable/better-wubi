#!/bin/python3
result, words = [], []
d = {}

with open('better-wubi.dict') as f:
    while True:
        line = f.readline()
        if not line:
            break
        idx = line.index(' ')
        code, value = line[:idx], line[idx + 1:-1]
        if len(value) == 1:
            result.append((code, value))
            if len(code) >= 2:
                d[value] = code[:2]
        else:
            words.append(value)

for word in words:
    if len(word) == 2:
        first, second = d[word[0]], d[word[1]]
        result.append((f'{first}{second}', word))
    elif len(word) == 3:
        first, second, third = d[word[0]], d[word[1]], d[word[2]]
        result.append((f'{first[0]}{second[0]}{third}', word))
    else:
        first, second, third, last = d[word[0]], d[word[1]], d[word[2]], d[word[-1]]
        result.append((f'{first[0]}{second[0]}{third[0]}{last[0]}', word))

result.sort(key=lambda it: it[0])

with open('better-wubi.dict', 'w') as f:
    for code, value in result:
        f.write(f'{code} {value}\n')
