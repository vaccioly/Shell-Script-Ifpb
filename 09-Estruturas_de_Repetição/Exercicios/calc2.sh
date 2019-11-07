#Solicitar ao usuario operação da calculadora deseja e o valor

#!/bin/bash
op=w
valor=0
while [ $op != 'quit' ]; do
	echo "Digite uma das opções"
	echo -e "(+)\tsomar\n(-)\tsubtrair"
	echo -e "(*)\tmultiplicar\n(/)\tdividir"
       	echo -e "(sair)\tquit "
	read op

	[  $op != 'quit' -a $op != 'somar' -a $op != 'subtrair' -a $op != 'multiplicar' -a $op != 'dividir' ] && echo -e "\nOpção inválida. Tente novamente!"

case $op in
	'somar')
		read -p ">_:" num
		valor=$(bc <<< "scale=2; $valor+$num")
		echo -e "\nSoma:$valor\n"
		sleep 2;;

	'subtrair')
		read -p ">_:" num
		valor=$(bc <<< "scale=2; $valor-$num")
		echo -e "\nSubtração: $valor\n"
		sleep 2;;

	'multiplicar')
		read -p ">_:" num
		valor=$(bc <<< "scale=2; $valor*$num") 
		echo -e "\nMultiplicação: $valor\n" 
		sleep 2;;
	
	'dividir')
		read -p ">_:" num 
		valor=$(bc <<< "scale=2; $valor/$num")
		echo -e "\nDivisão: $valor\n"
		sleep 2;;
esac
done

