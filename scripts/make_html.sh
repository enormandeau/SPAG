#!/bin/bash

for i in $(find . | grep -E ".md$")
do
    markdown $i > $i.html
done

