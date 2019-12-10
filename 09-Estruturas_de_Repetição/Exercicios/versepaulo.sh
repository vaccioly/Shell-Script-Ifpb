#1 passo criar funcao ver se eh paulo se fo return 0
#2 gerar arquivo que contem varios nomes de arquivos
#3 receber aquivo que conte quantas vezes tem paulo
#!/bin/bash

function ve-se-eh-paulo(){
	if [ $1 == 'paulo' ];then
		return 0
	else
		return 1
    fi
	}

