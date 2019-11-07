#!/bin/bash

nomeMaior=""
maior=0
for x in $(ls); do
	[ -f $x ] && read a b <<< "$( du -hbs $x )"
	[ $a -ge $maior ] && nomeMaior=$b maior=$a
done
echo -e "\nMaior: $nomeMaior \t$maior" 
