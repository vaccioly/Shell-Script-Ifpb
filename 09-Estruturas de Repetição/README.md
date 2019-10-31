# Estrutura de Repetição (for - do - done)
* Três formas do comando for
* Não esquecer da sintaxe completa finalizando com "done"

# 1- for da linguagem C 
* Quando se tem ideia muito boa sobre número de vezes que o bloco deve ser executado

	for (( i=1; i<=10; i++)); do 
	echo $i
	echo $(($i * $i)) # Com substituição aritimetica
	done

# 2- for da linguagem Python
* Quando se conhece um grupo de valores bem definido e deseja-se que uma variavel obtenha um valor desde grupo a cada iteração

	for k in a b c; do
		echo $k
	done



# 3- for de $* ## É necessario argumentos de linha de comandos
	for x in $*; do
		echo "aaaa $x"
	done


echo "linha 1" > a.txt
echo "linha 2" >> a.txt
echo "linha 3" >> a.txt

for l in "$(cat a.txt)"; do
	echo "$l"
done
