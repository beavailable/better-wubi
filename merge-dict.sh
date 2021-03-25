#!/bin/bash
if [ $# = 0 ]; then
    echo 'missing a parameter'
    exit 1
fi
while read code chinese; do
    sed -i -E "s/^.{${#code}} ($chinese)$/$code \1/" better-wubi.dict
done <$1
