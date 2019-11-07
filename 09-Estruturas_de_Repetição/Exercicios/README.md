# while - do - done

while [ "${world}" != "END" ]; do
	echo "Será executado até que se digite END"
	read word
done

while (( "${SECONDS} <=10 )); do
	echo "Já se passaram ${SECONDS} seconds"
	sleep 1
done


* Existe 2 maneiras de executar o while
* 1 -Primeira

```
#!/bin/bash
x=1
while [ $x -lt 10 ]; do 
	echo $x
	x=$(($x + 2))
done

# 2- Segunda 
while read line; do	# Ler cada linha do arquivo
	echo $line	# Exibe linha por linha
done < arquivo.txt 		# Finaliza o while e recebe o				    # o arquivo a ser lido.
```
