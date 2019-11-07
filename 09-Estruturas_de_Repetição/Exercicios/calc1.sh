#Solicitar ao usuario operação da calculadora deseja e o valor

#!/bin/bash
op=w
valor=0
while [ $op != 'quit' ]; do
	echo -e "Visor: $valor\n"
	echo "Digite uma das opções"
	echo -e "(+)\tsomar\n(-)\tsubtrair"
	echo -e "(*)\tmultiplicar\n(/)\tdividir"
	echo -e "(sair)\tquit"
	read op

	[ $op != 'quit' -a $op != 'somar' -a $op != 'subtrair' -a $op != 'multiplicar' -a $op != 'dividir' ] && echo -e "\nOpção inválida. Tente novamente!"

	if [ $op = 'somar' ]; then
		read -p ">_:" num 
		valor=$( bc <<< "scale=2; $valor + $num" )
		echo -e "Soma: $valor\n"
		sleep 2
	fi
	if [ $op = 'subtrair' ]; then 
		read -p ">_:" num 
		valor=$( bc <<< "scale=2; $valor - $num" ) 
		echo -e "Subtração: $valor\n" 
		sleep 2
	fi
	if [ $op = 'multiplicar' ]; then
		read -p ">_:" num
		valor=$( bc <<< "scale=2; $valor * $num" )
		echo -e "Multiplicação: $valor\n"
		sleep 2
	fi
	if [ $op = 'dividir' ]; then
		read -p ">_:" num 
		valor=$( bc <<< "scale=2; $valor / $num" )
		echo -e "Divisão: $valor\n"
		sleep 2
	fi
done

