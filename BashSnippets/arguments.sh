#!/usr/bin/env bash

# Run in terminal: bash env_var_and_for_loop.sh arg1 arg2 arg3
# Loops through arguments and prints it out

for var in "$@"
do
    echo ${var}
done
