#!/bin/bash
declare -A freq

count_chars() {
    local chars left_total right_total total letter count ratio
    chars=$(sed -nE '/^.* .$/p' $1 | sort -st ' ' -k 2,2 | uniq -f 1)
    left_total=0
    right_total=0
    for letter in {a..y}; do
        count=$(echo "$chars" | sed -nE "/^.*$letter.* .$/p" | wc -l)
        if [[ 'qwertasdfgxcvb' == *$letter* ]]; then
            ((left_total += count))
        else
            ((right_total += count))
        fi
        freq[$letter]=$(awk "BEGIN {printf(\"%.1f\",$count/1000)}")
    done
    echo '单字（以千为单位）：'
    print_freq
    total=$((left_total + right_total))
    ratio=$(awk "BEGIN {printf(\"%.f%%:%.f%%\",$left_total/$total*100,$right_total/$total*100)}")
    echo "左边总计：$left_total，右边总计：$right_total，比例为 $ratio"
}
count_words() {
    local words left_total right_total total letter count ratio
    words=$(sed -nE '/^.* .{2,}$/p' $1)
    left_total=0
    right_total=0
    for letter in {a..y}; do
        count=$(echo "$words" | sed -nE "/^.*$letter.* .*$/p" | wc -l)
        if [[ 'qwertasdfgxcvb' == *$letter* ]]; then
            ((left_total += count))
        else
            ((right_total += count))
        fi
        freq[$letter]=$(awk "BEGIN {printf(\"%.1f\",$count/10000)}")
    done
    echo '词组（以万为单位）：'
    print_freq
    total=$((left_total + right_total))
    ratio=$(awk "BEGIN {printf(\"%.f%%:%.f%%\",$left_total/$total*100,$right_total/$total*100)}")
    echo "左边总计：$left_total，右边总计：$right_total，比例为 $ratio"
}
print_freq() {
    echo '---------------------------------------------------------------------------------'
    echo "| Q-${freq['q']} | W-${freq['w']} | E-${freq['e']} | R-${freq['r']} | T-${freq['t']} | Y-${freq['y']} | U-${freq['u']} | I-${freq['i']} | O-${freq['o']} | P-${freq['p']} |"
    echo '---------------------------------------------------------------------------------'
    echo " | A-${freq['a']} | S-${freq['s']} | D-${freq['d']} | F-${freq['f']} | G-${freq['g']} | H-${freq['h']} | J-${freq['j']} | K-${freq['k']} | L-${freq['l']} |"
    echo ' -------------------------------------------------------------------------'
    echo "   | Z     | X-${freq['x']} | C-${freq['c']} | V-${freq['v']} | B-${freq['b']} | N-${freq['n']} | M-${freq['m']} |"
    echo '   ---------------------------------------------------------'
}

count_chars better-wubi.dict
echo
count_words better-wubi.dict
