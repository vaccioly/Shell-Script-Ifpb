#!/bin/bash

nomeMaior=""
maior=0

for x in $(ls); do
#	[ -f $x ] && linha=$(cat $x | wc -l )

	[ -f $x ] && linha=$(wc -l < $x)
	[ $linha -gt $maior ] && nomeMaior=$x maior=$linha
done
echo -e "\nMaior: $nomeMaior \t$maior" 
