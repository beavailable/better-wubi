#!/bin/python3
char_lines, words = [], []
d = {}

with open('better-wubi.dict') as f:
    while True:
        line = f.readline()
        if not line:
            break
        line = line[:-1]
        code, value = line.split(' ')
        if len(value) == 1:
            char_lines.append(line)
            if len(code) >= 2:
                d[value] = code[:2]
        else:
            words.append(value)

with open('better-wubi.dict', 'w') as f:
    for line in char_lines:
        f.write(f'{line}\n')
    for word in words:
        if len(word) == 2:
            first, second = d[word[0]], d[word[1]]
            f.write(f'{first}{second} {word}\n')
        elif len(word) == 3:
            first, second, third = d[word[0]], d[word[1]], d[word[2]]
            f.write(f'{first[0]}{second[0]}{third} {word}\n')
        else:
            first, second, third, last = d[word[0]], d[word[1]], d[word[2]], d[word[-1]]
            f.write(f'{first[0]}{second[0]}{third[0]}{last[0]} {word}\n')
