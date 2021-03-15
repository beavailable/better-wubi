#!/bin/bash
[ $# != 1 ] && exit 1
while read code chinese; do
    sed -i -E "s/^.{${#code}}( $chinese)$/$code\1/" better-wubi.dict
done <$1
