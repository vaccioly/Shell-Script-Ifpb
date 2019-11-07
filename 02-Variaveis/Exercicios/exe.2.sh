# Escreva um script shell que leia 3 nomes e 3 telefones e imprima-os na tela.

#!/bin/bash

read -p "Digite seu nome: " nome
read -p "Digite seu telefone: " fone

echo "Sua entrada na minha agenda é:"
echo -e "${nome}\t${fone}"


read -p "Digite seu nome: " nome1
read -p "Digite seu telefone: " fone1

echo "Sua entrada na minha agenda é:"
echo -e "${nome1}\t${fone1}"


read -p "Digite seu nome: " nome2
read -p "Digite seu telefone: " fone2

echo "Sua entrada na minha agenda é:"
echo -e "${nome2}\t${fone2}"
