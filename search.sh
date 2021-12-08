#!/usr/bin/env bash
echo "Enter Keyword:"
read -r KEYWORD
while IFS= read -r -d '' file; do
    for i in $file; do
        sed <"$i" 's/^[^ ]*[ ]//' | grep -wnH --color=always "$KEYWORD"
    done
done < <(find . -name '*.log' -print0)
