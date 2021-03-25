#!/bin/python3
with open('better-wubi.dict', 'rb') as f:
    data = f.read()

size = len(data)
idx = 0
STATE_NONE = 0
STATE_SPACE = 1
state = STATE_NONE
value_idx = 0
while idx < size:
    b = data[idx]
    if state == STATE_NONE:
        if b == 32:
            state = STATE_SPACE
            value_idx = idx + 1
    elif b == 10:
        if (idx - value_idx) % 3:
            print(f'{hex(value_idx)}: {data[value_idx:idx].hex(" ")}')
        state = STATE_NONE
    idx += 1
