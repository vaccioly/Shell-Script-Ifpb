#Solicitar ao usuario operação da calculadora deseja e o valor
'''
#!/bin/bash
op=w
valor=0
while [ $op != 'quit' ]; do
	echo "Digite uma das opções"
	echo -e "(+)\tsomar\n(-)\tsubtrair"
	echo -e "(*)\tmultiplicar\n(/)\tdividir"
       	echo -e "(quit)\tsair "
	read op
	[ $op = 'somar' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor+$num)) && echo -e "Soma:$valor"
	[ $op = 'subtrair' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor-$num)) && echo -e "Subtração: $valor"

	[ $op = 'multiplicar' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor*$num)) && echo "Multiplicação:$(($valor))"
	[ $op = 'dividir' ] && read -p "Valor >_:" num && echo -e "\nValor Anterior: $valor" && valor=$(($valor/$num)) && echo "Divisão:$(($valor))"
done
'''
