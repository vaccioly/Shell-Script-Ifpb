#!/bin/bash

echo "Hello, World"

read -p "Qual o seu nome? " nome
echo -e "Prazer em te conhecer, ${nome}! Hoje é $(date +%d) $(date +%m) $(date +%y),$(date +%A) "
