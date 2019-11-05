#Solicitar ao usuario operação da calculadora deseja e o valor

#!/bin/bash
op=w
valor=0
while [ $op != 'quit' ]; do
	echo "Digite uma das opções"
	echo -e "(+)\tsomar\n(-)\tsubtrair"
	echo -e "(*)\tmultiplicar\n(/)\tdividir"
       	echo -e "(quit)\tsair "
	read op
	[ $op = 'somar' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor+$num)) && echo -e "Soma:$valor\n " && sleep 2
	[ $op = 'subtrair' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor-$num)) && echo -e "Subtração: $valor\n" && sleep 2

	[ $op = 'multiplicar' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor*$num)) && echo -e "Multiplicação:$valor\n" && sleep 2
	[ $op = 'dividir' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor/$num)) && echo -e "Divisão:$valor\n" && sleep 2
done

