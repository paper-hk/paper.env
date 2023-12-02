#!/usr/bin/env bash

# The environment variable ${PAPER} should  be set
# to the root directory of this git repository.

echo ++[$PAPER/bashrc]

# Interate through all scripts in ~/bashrc.d that
# start with a digit, sourcing them in order.

for path in $(ls ${PAPER}/bashrc.d/[0-9]* | sort); do
    echo sourcing: $path
    source $path
done

echo --[$PAPER/bashrc]
