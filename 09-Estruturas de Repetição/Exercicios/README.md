# Existe 2 maneiras de executar o while
# 1 -Primeira
```
#!/bin/bash
x=1
while [ $x -lt 10 ]; do
	echo $x
	x=$(($x + 2))
done

# 2- 
while read line; do
	echo $l
done < a.txt
```
