#!/bin/bash

#function name(){
#	echo "oi" $1 $2 $3 $# $*
#return xixards
#}
#name xico xuxa xexel
#echo $?

function nome(){

	echo $(( $1 + $2 ))
}
ret=$(nome 4 7)
echo $?
echo $ret
