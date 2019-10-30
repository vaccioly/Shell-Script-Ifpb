#!/bin/bash

nomeMaior=""
tamanho=0
for x in $(ls); do
	[ -f $x ] && read a b <<< "$( du -hbs $x )"
	[ ${a} -ge ${tamanho} ] && nomeMaior=${b} tamanho=${a}
done
echo "O maior arquivo do diretorio atual é ${nomeMaior}, tamanho ${tamanho}" 
