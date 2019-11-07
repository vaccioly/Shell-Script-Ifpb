# Estrutura de Repetição (for - do - done)
* Três formas do comando for
* Não esquecer da sintaxe completa finalizando com "done"

# 1- for da linguagem C 
* Quando se tem ideia muito boa sobre número de vezes que o bloco deve ser executado

```	for (( i=1; i<=10; i++)); do 
	echo $i
	echo $(($i * $i)) # Com substituição aritimetica
	done
```
# 2- for da linguagem Python
* Quando se conhece um grupo de valores bem definido e deseja-se que uma variavel obtenha um valor desde grupo a cada iteração
```
	for k in a b c; do
		echo $k
	done
```


# 3- for de $* ## É necessario argumentos de linha de comandos
```	for x in $*; do
		echo "aaaa $x"
	done


echo "linha 1" > a.txt
echo "linha 2" >> a.txt
echo "linha 3" >> a.txt

for l in "$(cat a.txt)"; do
	echo "$l"
done
```

# if - then - fi

if condição ; then
comandos
fi
----

if [ -d $4 ]; then
comandos
fi

----
if [0 -gt 12 ]; then
echo ok
else
echo Fail

----
if [ “x” == ”y”’]; then
echo y
elif [ “z” == “y”]; then
echo z
else
echo outro
fi
-----------
# Case
case $x in
    “a”) echo OK ;;
    “b”) echo aaa;;
    “c”) echo x ;;
*) echo outro ;;
esac
# Funções
* Declarar uma função é criar um comando que fica na memória
function Soma () {
 variaveis internas da função: $1 $2 $3 ….
#Retorno
echo “Xau”
}
> Como passar argumentos para a função?  > Retorno da função?  
x=$(soma 1 2 3)

