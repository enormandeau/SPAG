#!/bin/bash

for i in $(find . | grep -E ".md.html$")
do
    rm "$i"
done

rm index.html

