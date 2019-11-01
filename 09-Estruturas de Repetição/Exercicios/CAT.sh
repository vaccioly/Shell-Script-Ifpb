#!/bin/bash
x=1
while read l; do 
	echo $x $l
	x=$(($x +1))
done < a.txt
