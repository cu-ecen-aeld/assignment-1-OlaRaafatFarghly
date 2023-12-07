#!/bin/bash
if [ ! $# -eq 2 ]
then 
    echo "Wrong number of arguments."
    exit 1
fi

writefile=$1
writestr=$2
target_directory=$(dirname $writefile)

if [ ! -d $target_directory ]
then
    mkdir -p $target_directory 2>/dev/null
    if [ ! $? -eq 0 ];then
        echo "Unable to create folder!" 
        exit 1
    fi
fi

echo $writestr > $writefile 2>/dev/null

if [ ! $? -eq 0 ]
then
    echo "Unable to create/write file!" 
    exit 1
fi