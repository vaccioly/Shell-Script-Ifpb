#!/bin/bash
# Versão incrementando +1
echo "Contagem regressiva..."
for (( i=0; i<=10; i++)); do
	echo "$((10 - i))"
	sleep 1
done
echo "Feliz Ano Novo!!!"

# Versão 2 decrementando -1

echo "Contagem regressiva ... "
for ((i=10; i>=0; i--)); do
	echo "$i $(sleep 1)"
done
echo "Feliz Ano Novo!!!"
