#!/bin/bash

bike[7]=caloi
bike[9]=monark
bike[0]=shimano

echo ${bike[*]}
echo ${!bike[*]}
echo ${#bike[*]}
echo ${bike[@]} # trata os espaços.
echo ${bike[9]}


bus=(setusa transnacional reunidas jorge)
