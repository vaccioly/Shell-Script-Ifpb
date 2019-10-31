#!/bin/bash

echo "linha 1" > a.txt
echo "linha 2" >> a.txt
echo "linha 3" >> a.txt

for x in "$(cat a.txt)"; do
	echo "$x"
done
