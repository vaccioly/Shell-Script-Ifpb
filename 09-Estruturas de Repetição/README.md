# Estrutura de Repetição

# for - do - done

* Não esquecer da sintaxe completa finalizando com "done"

# 1 for estilo linguagem de programação em "C"
for (( i=1; i<10; i++)); do 
echo $i
echo $(($i * $i))
done

# 2- for estilo linguagem de programação Python
for k in a b c; do
echo $k
sleep 1
done

a="Xico Xaou Xuxa"
for x in "${a}"; do
	echo $x
done


for x in $(ls); do
	echo $x | wc -l

done

for x in $(ls); do
	[ -f $x ] && wc $x
done


for x in $*; do
	echo "aaaa $x"
done

#3- for com substituição especial
echo "linha 1" > a.txt
echo "linha 2" >> a.txt
echo "linha 3" >> a.txt

for l in "$(cat a.txt)"; do
	echo "$l"
done
