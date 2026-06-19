#!/usr/bin/env bash

while read -r line; do
    printf 'dpkg -L %s\n' "$line"
    dpkg -L "$line"
    printf '\n'
done < "log.log"
