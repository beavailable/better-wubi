#!/bin/python3

def print_freq(freq, units):
    left_total, right_total, total = 0, 0, 0
    for c in 'qwertasdfgxcvb':
        left_total += freq[c]
        freq[c] = f'{freq[c]/units:.1f}'
    for c in 'yuiophjklnm':
        right_total += freq[c]
        freq[c] = f'{freq[c]/units:.1f}'
    total = left_total + right_total
    print('---------------------------------------------------------------------------------')
    print(f"| Q-{freq['q']} | W-{freq['w']} | E-{freq['e']} | R-{freq['r']} | T-{freq['t']} | Y-{freq['y']} | U-{freq['u']} | I-{freq['i']} | O-{freq['o']} | P-{freq['p']} |")
    print('---------------------------------------------------------------------------------')
    print(f" | A-{freq['a']} | S-{freq['s']} | D-{freq['d']} | F-{freq['f']} | G-{freq['g']} | H-{freq['h']} | J-{freq['j']} | K-{freq['k']} | L-{freq['l']} |")
    print(' -------------------------------------------------------------------------')
    print(
        f"   | Z     | X-{freq['x']} | C-{freq['c']} | V-{freq['v']} | B-{freq['b']} | N-{freq['n']} | M-{freq['m']} |")
    print('   ---------------------------------------------------------')
    print(f'左边总计 {left_total}，右边总计 {right_total}，比例为 {left_total/total:.0%}:{right_total/total:.0%}')


def stat_list(lst, units):
    freq, prev = {}, ''
    for c in 'abcdefghijklmnopqrstuvwxy':
        freq[c] = 0
    for code, value in lst:
        if value == prev:
            continue
        for c in code:
            freq[c] += 1
        prev = value
    print_freq(freq, units)


def main():
    chars, words = [], []
    with open('better-wubi.dict') as f:
        while True:
            line = f.readline()
            if not line:
                break
            idx = line.index(' ')
            code, value = line[:idx], line[idx + 1:-1]
            if len(value) == 1:
                chars.append((code, value))
            else:
                words.append((code, value))
    chars.sort(key=lambda it: it[1])
    print('单字（以千为单位）：')
    stat_list(chars, 1000)
    print()
    print('词组（以万为单位）：')
    stat_list(words, 10000)


main()
