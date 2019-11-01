#Solicitar ao usuario operação da calculadora deseja e o valor

#!/bin/bash
op=w
valor=0
while [ $op != 'quit' ]; do
	read -p "Digite operação desejeda (somar, subtrair, multiplicar e dividir ou (quit) para sair: " op
	read -p "Digite valor:" num

	[ $op = 'somar' ] && valor=$(($valor+$num)) && echo -e "\nValor Anterior: $valor \nSoma:$valor"
	[ $op = 'subtrair' ] && valor=$(($valor-$num)) && echo -e "\nValor Anterior: $valor \nSubtração: $valor"
	[ $op = 'multiplicar' ] && valor=$(($valor*$num)) && echo "Multiplicação:$(($valor))"
	[ $op = 'dividir' ] && valor=$(($valor/$num)) && echo "Divisão:$(($valor/$num))"

done
