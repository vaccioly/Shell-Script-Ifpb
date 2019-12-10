Processamento de textual
	É arquivos com nomes e cpf e mostra apenas nomes.

	cut
	tr
	paste
	sort
	uniq
	grep + E.R
	sed
	awk
cut tem limitaçoes de uso:
	1 com espaços duplos ou triplos
	2 Não imprime os campos de traz para frente

cat /etc/passwd | cut -d ":" -f1,7 # Filtra as colunas 1 e 7
cat /etc/passwd | cut -d ":" -f1-3 # Filtra as colaunas 1 ate 3
cat nome.txt | cut -d'@' -f1 # Filtra os nomes do emails separadados pelo @

ls -l | cut -c 2-10
ls -l | cut -c 2-4,5-7,8-10 --output-delimiter=' '

exercicio
lista com emails

comando tr
cat x.xh | tr -s ' ' | cut -d' ' -f2

cat x.xh | tr -s ' ' | cut -d' ' -f1 > 1.txt
cat x.xh | tr -s ' ' | cut -d' ' -f2 > 2.txt

paste 2.txt 1.txt

