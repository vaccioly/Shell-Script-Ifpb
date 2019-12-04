#!/bin/bash

cat a.txt | cut -d " " -f2 | cut -d "." -f1-3 > new.txt
for i in $(cat new.txt); do
	echo "$i.0/24"
done
cat a.txt | cut -d " " -f2 | cut -d "." -f1-3 | sort | uniq > new.txt
for i in $(cat new.txt); do
	echo "$i.0/24"
done
 cat a.txt | grep x
 cat a.txt | grep x --color
 cat a.txt | grep x --color -r
 cat a.txt | grep x --color -R
 cat a.txt | grep x --color -o
 cat a.txt | grep x  -o -v
 cat a.txt | grep x -v
 cat a.txt | grep x -v -o
 cat a.txt | gre -E "[0-9]{1,3}\.[0-9]{1,3}.[0-9]{1,3}\.[0-9]{1,3}" --color
 cat a.txt | grep -E "[0-9]{1,3}\.[0-9]{1,3}.[0-9]{1,3}\.[0-9]{1,3}" --color
 cat a.txt | grep -E "[0-9]{1,3}\.[0-9]{1,3}.[0-9]{1,3}\.[0-9]{1,3}" --color -o
 cat a.txt | grep -E "[0-9]{1,3}\.[0-9]{1,3}.[0-9]{1,3}" --color -o
 cat a.txt | grep -E "[0-9]{1,3}(\.[0-9]{1,3}){3}" --color -o
 cat a.txt | grep -E "[0-9]{1,3}(\.[0-9]{1,3}){3}" --color
 cat a.txt | grep -E "[0-9]{1,3}(\.[0-9]{1,3}){3}" -o
