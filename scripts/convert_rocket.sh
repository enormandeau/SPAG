#!/bin/bash
FOLDER=$1
SIZE=$2

IFS=$'\n'

time for file in $(find $FOLDER -iname "*.jpg" | grep -v _small)
do
    echo $file
    NEWNAME=$(echo $file | perl -pe 's/(\.jpg|\.JPG)/_small\1/')
    convert -resize "$SIZE"x"$SIZE" -unsharp 1.0x1.0+1+0.04 $file $NEWNAME
done

