#imprimir as linhas com menos de 30 c

#!/bin/bash

while read linha; do
	numLinha=$( wc -c <<< "$l" )
	[ $numLinha -lt 31 ] && echo $l
done < arquivo.txt
