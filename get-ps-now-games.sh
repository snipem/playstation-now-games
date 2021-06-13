#!/bin/bash
# run: ./get-ps-now-games.sh
set -e

# Add current folder to path for pup
PATH=$PATH:.

curl -s "https://www.playstation.com/en-us/ps-now/ps-now-games/" |
    pup ".tabs__tab-content > div > div > div > div > div > div > p text{}" |
    grep -v "^[[:space:]]*$" |
    sed -e 's/^[[:space:]]*//' |
    sort -u -f |
    grep -E -i -v "^[A-z]$|0-9" |
    perl -MHTML::Entities -pe 'decode_entities($_);'
