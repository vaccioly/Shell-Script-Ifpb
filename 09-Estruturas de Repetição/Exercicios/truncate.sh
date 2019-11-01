#imprimir as linhas com menos de 30 c

#!/bin/bash

while read l; do
	nl=$(wc -c <<< "$l")
	[ $nl -lt 31 ] && echo $l
done < a.txt
