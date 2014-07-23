#!/bin/bash

for i in $(find . | grep -E ".md$")
do
    markdown $i > $i.html
done

cp README.md.html index.html

