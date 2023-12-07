#!/bin/bash
if [ ! $# -eq 2 ]
then 
    echo "arguments above are not specified."
    exit 1
fi

writefile=$1
writestr=$2
directory=$(dirname $writefile)

if [ ! -d $directory ]
then
    mkdir -p $directory 2>/dev/null
fi

echo $writestr > $writefile 2>/dev/null

if [ ! $? -eq 0 ]
then
    echo "file could not be created." 
    exit 1
fi