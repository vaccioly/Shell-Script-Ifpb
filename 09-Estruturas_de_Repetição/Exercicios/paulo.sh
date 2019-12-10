#!/bin/bash

source versepaulo.sh
count=0
while read linha; do
	ret=$(ve-se-eh-paulo $linha )
	if [ $? -eq 0 ]; then 
		count=$(($count + 1))
	fi
done < nomes.txt
echo -e "Total: $count"
