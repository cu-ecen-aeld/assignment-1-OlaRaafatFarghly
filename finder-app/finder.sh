#!/bin/bash
if [ ! $# -eq 2 ]
then 
    echo "Wrong number of arguments."
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]
then 
    echo "filesdir does not represent a directory on the filesystem."
    exit 1
fi

   
line=$( grep -r $searchstr $filesdir | wc -l)
file=$( grep -r $searchstr $filesdir | uniq | wc -l)
echo "The number of files are ${file} and the number of matching lines are ${line}"