#!/bin/bash
a=w
while [ $a != 'quit' ]; do
	read -p "Digite algo: " a
	echo $a
done
