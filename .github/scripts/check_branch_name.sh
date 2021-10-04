#!/bin/sh -l

if [ $# != 1 ]; then
    echo "We don't know what branch this is supposed to be. It's your teacher's fault :-)
    exit 2
fi

EXPECTED_BRANCH_NAME=$1

THIS_BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [  "$THIS_BRANCH" != "${EXPECTED_BRANCH_NAME}" ]; then
    echo "The branch name should be: $EXPECTED_BRANCH_NAME"
    exit 1
fi
