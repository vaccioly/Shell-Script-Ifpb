# Melhore o script para que imprima primeiro os 3 telefones e depois os 3 nomes.

#!/bin/bash

read -p "Digite seu nome: " nome
read -p "Digite seu telefone: " fone
read -p "Digite seu nome: " nome1
read -p "Digite seu telefone: " fone1
read -p "Digite seu nome: " nome2
read -p "Digite seu telefone: " fone2

echo "Sua entrada na minha agenda é:"

echo -e "${fone}\t${fone1}\t${fone2}"

echo -e "${nome}\t${nome1}\t${nome2}"
