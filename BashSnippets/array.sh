#!/usr/bin/env bash

array=( arg1 arg2 arg3 )
for i in "${array[@]}"
do
    echo ${i}
done