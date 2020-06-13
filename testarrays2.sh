#!/bin/bash

#bus[7]=caloi
#bus[9]=monark
#bus[0]=shimano

bus=(setusa transnacional reunidas jorge)
bus[${#bus[*]}]=xicobus
bus=( ${bus[*]} busao )
bus=( xixataxi ${bus[*]} )

busbike=( ${bus[*]} ${bike[*]} )

echo ${bus[*]}
echo ${!bus[*]}
echo ${#bus[*]}
echo ${bus[@]} # trata os espaços.
echo ${bus[9]}

echo ${bus[*]:2}
echo ${bus[*]:0:2}
#bus=(setusa transnacional reunidas jorge)

declare -A c
c[boboca]=3
c[ehtu]=4
echo ${c[*]}
echo ${!c[*]}
echo ${#c[*]}
echo ${c[@]} # trata os espaços.
echo ${c[9]}

echo ${c[*]:2}
