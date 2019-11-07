#!/bin/bash
numero=1
while read linha; do 
	echo $numero $llinha
	x=$(($x +1))
done < arquivo.txt
