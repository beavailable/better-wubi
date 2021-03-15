#!/bin/bash
content=$(cat better-wubi.dict)
echo "$content" | sort -st ' ' -k 1,1 >better-wubi.dict
