#!/bin/sh -l

set -x

test $FOO = BAR
test $BAR = BAZ

# check that profile doesn't override GitHub-set variables
test $GITHUB_ACTION = check-vars-present
