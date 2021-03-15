#!/bin/bash
# $1: header
print_map() {
    echo "$1"
    echo '---------------------------------------------------------------------------------'
    echo "| Q-${map['q']} | W-${map['w']} | E-${map['e']} | R-${map['r']} | T-${map['t']} | Y-${map['y']} | U-${map['u']} | I-${map['i']} | O-${map['o']} | P-${map['p']} |"
    echo '---------------------------------------------------------------------------------'
    echo " | A-${map['a']} | S-${map['s']} | D-${map['d']} | F-${map['f']} | G-${map['g']} | H-${map['h']} | J-${map['j']} | K-${map['k']} | L-${map['l']} |"
    echo ' -------------------------------------------------------------------------'
    echo "   | Z     | X-${map['x']} | C-${map['c']} | V-${map['v']} | B-${map['b']} | N-${map['n']} | M-${map['m']} |"
    echo '   ---------------------------------------------------------'
}

if [ $# = 0 ]; then
    echo 'missing a parameter'
    exit 1
fi

declare -A map

hanzi=$(sed -nE '/^.* .$/p' $1 | sort -st ' ' -k 2,2 | uniq -f 1)
for letter in {a..y}; do
    count=$(echo "$hanzi" | sed -nE "/^.*$letter.* .$/p" | wc -l)
    map[$letter]=$(awk "BEGIN {ret=sprintf(\"%.1f\",$count/1000); print ret}")
done
print_map '单字（以千为单位）：'

words=$(sed -nE '/^.* .{2,}$/p' $1)
for letter in {a..y}; do
    count=$(echo "$words" | sed -nE "/^.*$letter.* .*$/p" | wc -l)
    map[$letter]=$(awk "BEGIN {ret=sprintf(\"%.1f\",$count/10000); print ret}")
done
print_map '词组（以万为单位）：'
