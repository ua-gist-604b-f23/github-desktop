#!/bin/sh -l

EXPECTED_FILES=$*

## Check Files

for f in $EXPECTED_FILES
do
    if [ ! -f "$f" ]; then
        echo "Expected file named $f but it does not seem to exist in this branch in the repo"
        exit 1
    fi
done
