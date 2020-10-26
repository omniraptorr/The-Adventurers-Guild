#!/bin/sh

FILES=`git status -s -uno | egrep '^M' | sed 's/^M//'`

for FILE in $FILES ; do
    echo "Fixing tabs to spaces $FILE" >&2

    # Replace tabs with four spaces
    sed -i $'s/\t/  /g' "$FILE"

    git add "$FILE"
done