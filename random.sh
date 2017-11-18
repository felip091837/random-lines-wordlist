#!/bin/bash

#fonte: http://www.dicas-l.com.br/cantinhodoshell/cantinhodoshell_20070119.php

IFS="
"

NumReg=$(cat entrada.txt | wc -l)

i=0

j=$((RANDOM % $NumReg))

for Reg in $(cat entrada.txt); do
	while [ ${aSai[$j]} ]; do
		j=$((RANDOM % $NumReg))
	done
	aSai[$j]="$Reg"
done

 > saida.txt

for ((i=0; i<=$NumReg-1; i++)); do
	echo ${aSai[i]} >> saida.txt
done

cat saida.txt
