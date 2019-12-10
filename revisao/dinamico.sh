#!/bin/bash
#declare -A ARRAY
cont=0
#for k in $(cat test3.sh); do
#	ARRAY[$k]=$cont
#	cont=$((cont +1))
#	#(( cont += 1 ))
#	echo ${ARRAY[$cont]}
#done
while read linha; do
	echo "--" $cont $linha
	ARRAY[$cont]=$linha
	(( cont += 1 ))
	echo ${ARRAY[$cont]}
done < test3.sh

echo "Novo array"

for x in ${ARRAY[*]}; do
	echo $x
done
