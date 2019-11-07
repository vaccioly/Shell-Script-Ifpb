#!/bin/bash

op=w
valor=0

function somar(){
	read -p ">_" num
	valor=$( bc <<< "scale=2; $valor + $num ")
	echo -e "\nSoma: $valor \n"
	sleep 1
}
function subtrair(){
	read -p ">_" num
	valor=$( bc <<< "scale=2; $valor - $num ")
	echo -e "\nSubtração: $valor\n"
	sleep 2
}
	
function multiplicar(){
	read -p ">_" num
	valor=$( bc <<< "scale=2; $valor * $num ")
	echo -e "\nMultiplicação:$valor\n"
	sleep 1
}

function dividir(){
	read -p ">_" num 
	valor=$(bc <<< "scale=2; $valor/$num")
	echo -e "\nDivisão:$valor\n"
	sleep 1
}


while [ $op != 'quit' ]; do
	echo -e "Visor $valor\n"
	echo "Digite uma das opções"
	echo -e "(+)\tsomar\n(-)\tsubtrair"
	echo -e "(*)\tmultiplicar\n(/)\tdividir"
       	echo -e "(quit)\tsair "
	read -p ">_" op


	case $op in
		'somar')
			somar;;
		'subtrair')
			subtrair;;
		'multiplicar')
			multiplicar;;
		'dividir')
			dividir;;

	esac

done

