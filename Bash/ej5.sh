#!/bin/bash 

num=0 

until [ $num -eq 999 ]; do

echo -n "Número: " 

read num 

if [ $num -ne 999 ]; then 

echo $num >> numeros.txt 

fi 

done 

echo -n "¿Quieres ver los números introducidos?(s/n) " 

read res 

if [ $res == "s" -o $res == "S" ]; then 

echo -n "¿Orden estalbecido, ascendente o descentente?(o/a/d) " 

read orden 

case $orden in o|O) cat numeros.txt;; 

a|A) cat numeros.txt | sort -n;; 

d|D) cat numeros.txt | sort -n -r;; 

*) echo Opción no válida;; 

esac 

fi 

rm numeros.txt 

echo "Fin del programa"