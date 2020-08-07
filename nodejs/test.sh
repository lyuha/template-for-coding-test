#!/bin/bash

for dir in ./test-case/*/; do
    if [ -f "$dir/input.txt" ] && [ -f "$dir/output.txt" ]; then
        node main.js < "$dir/input.txt" | diff - "$dir/output.txt"
    fi
done
