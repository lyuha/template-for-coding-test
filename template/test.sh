#!/bin/bash

for dir in ./test-case/*/; do
    if [ -f "$dir/input.txt" ] && [ -f "$dir/output.txt" ]; then
        python main.py < "$dir/input.txt" | diff - "$dir/output.txt"
    fi
done
