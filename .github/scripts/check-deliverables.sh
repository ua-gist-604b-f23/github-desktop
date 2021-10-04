#!/bin/sh -l

EXPECTED_BRANCH_NAME=desktop
EXPECTED_FILES=github-desktop-screenshot.png

THIS_BRANCH=$(git rev-parse --abbrev-ref HEAD)

## Check Branch Name
EXTRACTED_BRANCH=$(grep 'The name of my branch is: ' README.md | sed 's/The name of my branch is://' | sed 's/^ *//g')
if [ -z "$EXTRACTED_BRANCH" ]; then
    echo You should enter the branch name on the line starting with: \"The name of my branch is: \"
    echo The name of _this_ branch is $THIS_BRANCH
    exit 1
fi
if [  "$THIS_BRANCH" != "$EXTRACTED_BRANCH" ]; then
    echo "The branch names should match: \'$THIS_BRANCH\' != \'$EXTRACTED_BRANCH\'"
    exit 1
fi
if [  "$THIS_BRANCH" != "desktop" ]; then
    echo "The branch name should be: \'my_branch\'"
    exit 1
fi

## Check Files

for f in $EXPECTED_FILES
do
    if [ ! -f "$f" ]; then
        echo "Expected file named $f but it does not seem to exist in this branch in the repo"
        exit 1
    fi
done
