#!/bin/python3

def print_freq(freq):
    left_total, right_total, total = 0, 0, 0
    for c in 'qwertasdfgxcvb':
        left_total += freq[c]
    for c in 'yuiophjklnm':
        right_total += freq[c]
    total = left_total + right_total
    for c in 'abcdefghijklmnopqrstuvwxy':
        freq[c] = f'{freq[c]/total:.1%}'
    print('-------------------------------------------------------------------------------------------')
    print(f"| Q-{freq['q']} | W-{freq['w']} | E-{freq['e']} | R-{freq['r']} | T-{freq['t']} | Y-{freq['y']} | U-{freq['u']} | I-{freq['i']} | O-{freq['o']} | P-{freq['p']} |")
    print('-------------------------------------------------------------------------------------------')
    print(f" | A-{freq['a']} | S-{freq['s']} | D-{freq['d']} | F-{freq['f']} | G-{freq['g']} | H-{freq['h']} | J-{freq['j']} | K-{freq['k']} | L-{freq['l']} |")
    print(' ----------------------------------------------------------------------------------')
    print(
        f"   | Z      | X-{freq['x']} | C-{freq['c']} | V-{freq['v']} | B-{freq['b']} | N-{freq['n']} | M-{freq['m']} |")
    print('   ----------------------------------------------------------------')
    print(f'总计 {total}，左右比例为 {left_total/total:.1%}:{right_total/total:.1%}')


def stat_freq(lst):
    freq, prev = {}, ''
    for c in 'abcdefghijklmnopqrstuvwxy':
        freq[c] = 0
    for code, value in lst:
        if value == prev:
            continue
        for c in code:
            freq[c] += 1
        prev = value
    print_freq(freq)


def stat_chongma(lst):
    d = {}
    prev_code, prev_value = '', ''
    for code, value in lst:
        if len(code) <= 2:
            continue
        if value == prev_value:
            d[prev_code] -= 1
        if code in d:
            d[code] += 1
        else:
            d[code] = 1
        prev_code = code
        prev_value = value
    code_total, value_total, codes, values = 0, 0, 0, 0
    for code, count in d.items():
        if count <= 0:
            continue
        code_total += 1
        value_total += count
        if count > 1:
            codes += 1
            values += count
    print('-----------------------------------------------')
    print('| 指标 |    总计    |    重码    |    比例    |')
    print('-----------------------------------------------')
    print(f'| 编码 | {code_total:^10} | {codes:^10} | {codes/code_total:^10.1%} |')
    print('-----------------------------------------------')
    print(f'| 字词 | {value_total:^10} | {values:^10} | {values/value_total:^10.1%} |')
    print('-----------------------------------------------')


def main():
    chars, words = [], []
    with open('better-wubi.dict') as f:
        for line in f:
            idx = line.index(' ')
            code, value = line[:idx], line[idx + 1:-1]
            if len(value) == 1:
                chars.append((code, value))
            else:
                words.append((code, value))
    chars.sort(key=lambda it: it[1])
    print('单字比例：')
    stat_freq(chars)
    print()
    print('词组比例：')
    stat_freq(words)
    print()
    print('单字重码：')
    stat_chongma(chars)
    print()
    print('词组重码：')
    stat_chongma(words)
    print()
    print('提示：词库不同、统计方法不同可能会导致结果不同，此数据仅供参考！')


main()
