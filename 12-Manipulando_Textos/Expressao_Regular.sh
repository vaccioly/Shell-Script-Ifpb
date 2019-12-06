#!/bin/bash

# 1- Fazer um script que, dado a entrada arquivo.txt, gere uma saída com as Redes as quais os ip pertencem

cat arquivo.txt | cut -d " " -f2 | cut -d "." -f1-3 > new.txt
for i in $(cat new.txt); do
	echo "$i.0/24"
done

# 2- Melhorar os script anterior para que não aparecam Redes duplicadas.
cat arquivo.txt | cut -d " " -f2 | cut -d "." -f1-3 | sort | uniq > new.txt
for i in $(cat new.txt); do
	echo "$i.0/24"
done

cat arquivo.txt | grep x --color # [--color = destaca o que se estpa procurando, e lista as linhas que contém 'x']
cat arquivo.txt | grep x -o --color # [ -o, mostra apenas o X que está procurando ]
cat arquivo.txt | grep x -v --color # [-v, mostra apenas as linhas QUE NÃO TENHA O X, ou seja Inverte a busca ]

# ______________________________________________________#
##  Expressões Regulares ##
## Exemplo usando grep para buscar ip no arquivo.txt com sintaxe não otimizada ##
cat arquivo.txt | grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" --color # [-E para aceitar Expressão RegularExtendida ]

# [0-9] = para localizar numeros de 0 até 9
# {1,3} = indica que a quantidade de numeros localizados podendo ter 1, 2 ou 3 digitos
# \. = indica que o sinal de ponto "." faz parte da expressão localizada!
 
## OBS: o sinal de ponto "." indica qualquer carectere ou seja podendo ser letra numero ou caracteres especiais!

## Exemplo com sintaxe otimizada
cat arquivo.txt | grep -Eo "[0-9]{1,3}(\.[0-9]{1,3}){3}" --color
# ( ) = Grupo a ser pesquisado
# {3} = Repete esse grupo a ser pesquisado 3 vezes nesse caso,
